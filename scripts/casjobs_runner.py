"""
casjobs_runner.py
-----------------
Submits all SQL queries in Input/Queries/ to SciServer CasJobs, downloads the
results as CSV files to Input/Tables/, and cleans up all MyDB tables.

Execution order
~~~~~~~~~~~~~~~
1. A_master_objid.sql   — builds the master object-ID list (other queries depend on it)
2. All remaining *.sql  — sorted alphabetically; each table is dropped after download
3. Master table dropped — DR19_objID_List is removed last

Usage
~~~~~
    python scripts/casjobs_runner.py

Credentials can also be supplied via environment variables to avoid prompts:
    SCISERVER_USER  / SCISERVER_PASS
"""

import os
import time
import getpass
from pathlib import Path
from SciServer import Authentication, CasJobs

# ─────────────────────────────────────────────────────────────────────────────
# CONFIG
# ─────────────────────────────────────────────────────────────────────────────
SQL_FOLDER     = Path("input/queries")   # CasJobs SQL fragments
CAJOBS_FOLDER  = Path("input/tables")    # downloaded CasJobs CSVs land here
CONTEXT        = "DR17"                 # CasJobs context (DR17 exposes DR19 tables)
POLL_SECONDS   = 2
MASTER_SQL     = "A_master_objid.sql"   # always run first; table dropped last

CASJOBS_FOLDER.mkdir(exist_ok=True)

# ─────────────────────────────────────────────────────────────────────────────
# LOGIN
# ─────────────────────────────────────────────────────────────────────────────
username = os.getenv("SCISERVER_USER") or input("SciServer username: ")
password = os.getenv("SCISERVER_PASS") or getpass.getpass("SciServer password: ")

Authentication.login(username, password)
print("Login successful!\n")

# ─────────────────────────────────────────────────────────────────────────────
# HELPERS
# ─────────────────────────────────────────────────────────────────────────────
DONE   = {5}          # CasJobs status code: Query Complete
FAILED = {4, 6, 7}

def wait_for_job(job_id: int, poll_s: int = POLL_SECONDS) -> dict:
    """Poll until the job finishes; raise on failure."""
    last_code = None
    while True:
        st   = CasJobs.getJobStatus(job_id)
        code = st.get("Status")
        msg  = st.get("Message", "")
        rows = st.get("Rows")
        t_end= st.get("TimeEnd")

        if code != last_code or code in DONE or code in FAILED:
            print(f"  Job {job_id}  status={code}  rows={rows}  end={t_end}  msg={msg}")
            last_code = code

        if code in DONE:
            return st
        if (code in FAILED
                or (isinstance(msg, str) and "error" in msg.lower())
                or (isinstance(msg, str) and "fail"  in msg.lower())):
            raise RuntimeError(f"Job {job_id} failed: {st}")

        time.sleep(poll_s)


def run_sql_file(sql_file: Path) -> str:
    """
    Submit one SQL file to CasJobs, wait, download the result CSV.
    Returns the created table name (for later cleanup).
    """
    print(f"\n{'═'*60}")
    print(f"  Running: {sql_file.name}")
    print(f"{'═'*60}")

    sql    = sql_file.read_text(encoding="utf-8")
    job_id = CasJobs.submitJob(sql, context=CONTEXT)
    print(f"  Submitted job: {job_id}")

    status = wait_for_job(job_id)

    created_table = status.get("Created_Table")
    if not created_table:
        raise RuntimeError(
            f"{sql_file.name}: job completed but no Created_Table was returned.\n"
            f"Ensure your SQL uses INTO mydb.<table>.\nStatus: {status}"
        )

    print(f"  Downloading: {created_table}")
    df = CasJobs.executeQuery(f"SELECT * FROM mydb.{created_table}", context="MyDB")

    out_csv = CASJOBS_FOLDER / f"{created_table}.csv"
    df.to_csv(out_csv, index=False)
    print(f"  Saved: {out_csv}  (rows={len(df):,})")

    return created_table


def drop_table(table_name: str):
    """Drop a table from MyDB."""
    drop_sql = f"DROP TABLE webuser.{table_name}"
    print(f"  Dropping table: {drop_sql}")
    CasJobs.executeQuery(drop_sql, context="MyDB")
    print(f"  Table dropped: {table_name}")


# ─────────────────────────────────────────────────────────────────────────────
# MAIN EXECUTION
# ─────────────────────────────────────────────────────────────────────────────
all_sql_files = sorted(SQL_FOLDER.glob("*.sql"))

# Separate master from the rest
master_file  = SQL_FOLDER / MASTER_SQL
other_files  = [f for f in all_sql_files if f.name != MASTER_SQL]

if not master_file.exists():
    raise FileNotFoundError(f"Master SQL file not found: {master_file}")

# ── Step 1: Run master query (do NOT drop yet) ───────────────────────────────
print(f"STEP 1 — Running master query: {MASTER_SQL}")
master_table = run_sql_file(master_file)
print(f"\n  Master table '{master_table}' retained for dependent queries.\n")

# ── Step 2: Run all other queries, drop each table immediately ───────────────
print(f"STEP 2 — Running {len(other_files)} dependent queries …")
for sql_file in other_files:
    table = run_sql_file(sql_file)
    drop_table(table)

# ── Step 3: Drop master table last ──────────────────────────────────────────
print(f"\n{'═'*60}")
print(f"STEP 3 — Dropping master table: {master_table}")
print(f"{'═'*60}")
drop_table(master_table)

print("\nAll SQL files executed, CSVs saved to input/tables/, all tables dropped.")