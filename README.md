# Galaxy Classification for Next-Generation Astronomical Surveys
### DATA7903 Capstone Project

Machine-learning pipeline for galaxy morphology classification using SDSS photometric and spectroscopic data merged with Galaxy Zoo vote labels.

---

## Prerequisites

Before cloning this repo and running anything, make sure you have the following installed on your machine.

### 1. Python 3.10 or later

Download from [python.org](https://www.python.org/downloads/) and run the installer.

> **Windows:** During installation, tick **"Add Python to PATH"** — this is required for the `python` command to work in your terminal.

Verify the installation:
```
python --version
```

### 2. Git

Download from [git-scm.com](https://git-scm.com/downloads/) and install with default settings.

Verify:
```
git --version
```

### 3. pip (Python package manager)

pip is bundled with Python 3.10+. Verify it is available:
```
pip --version
```

If missing, reinstall Python or run:
```
python -m ensurepip --upgrade
```

### 4. SciServer account

Data is downloaded from SDSS via [SciServer CasJobs](https://skyserver.sdss.org/casjobs/).  
[Register for a free account](https://www.sciserver.org/register/) if you do not have one.

---

## Setup

### 1. Clone the repository

```
git clone <repo-url>
cd <repo-folder>
```

### 2. Create a virtual environment and install dependencies

**Option A — Automated (recommended):**
```
# Windows PowerShell
scripts\setup.ps1

# macOS / Linux / Git Bash
bash scripts/setup.sh
```

This creates a `.venv/` virtual environment, installs all dependencies from `requirements.txt`, and registers a Jupyter kernel named `DATA7903 (.venv)`.

**Option B — Manual:**
```
python -m venv .venv

# Activate (Windows)
.venv\Scripts\activate

# Activate (macOS / Linux)
source .venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt
```

> **VS Code users:** After setup, open the Command Palette (`Ctrl+Shift+P`) → *Python: Select Interpreter* → choose `.venv`. For notebooks, select the `DATA7903 (.venv)` kernel.

---

## Quick Start

### 1. Download SDSS data from SciServer CasJobs

Run the CasJobs runner script from the **repo root**. It will prompt for your SciServer credentials (or read them from environment variables `SCISERVER_USER` / `SCISERVER_PASS`):

```
python scripts/casjobs_runner.py
```

The script will:
1. Execute `input/queries/A_master_objid.sql` first to build the master object-ID list
2. Run all remaining SQL queries in `input/queries/` in alphabetical order, saving each result as a CSV in `input/tables/`
3. Drop all temporary MyDB tables from SciServer when finished

Downloaded CSVs land in `input/tables/` and are ready for the notebook.

### 2. Run models and scripts that process data

There is only one jypter notebook that uses data at the moment. It is exploration.ipynb which goes over preliminary data cleanup and processing.

Open `notebooks/exploratory_data_analysis/exploration.ipynb` in VS Code (or Jupyter) and run all cells from top to bottom.

---

## Project Structure

```
├── requirements.txt                           # Python dependencies
│
├── scripts/                                   # Scripts for setup and data collection
│   ├── casjobs_runner.py                      # Downloads SDSS data via SciServer CasJobs
│   ├── setup.ps1                              # Windows venv setup
│   └── setup.sh                               # Linux/macOS venv setup
│
├── input/                                     # All raw data inputs
│   ├── images/                                # JPEG cutouts from Legacy Survey (empty — not tracked)
│   ├── queries/                               # CasJobs SQL files
│   │   ├── A_master_objid.sql                 # Master object-ID list (run first)
│   │   ├── A_Zoo_Votes.sql                    # Galaxy Zoo vote labels
│   │   ├── Photo_VF01-49.sql                  # Photometric feature vertical fragments
│   │   └── Spec_VF01-18.sql                   # Spectroscopic feature vertical fragments
│   ├── spectra/                               # FITS spectra files (empty — not tracked)
│   ├── tables/                                # Downloaded CasJobs CSVs (git-ignored)
│   │   ├── DR19_objID_List.csv
│   │   ├── A_Zoo_Votes.csv
│   │   ├── Photo_VF01-49.csv
│   │   └── Spec_VF01-18.csv
│   └── training_sets/                         # Pre-processed datasets for model development
│
├── notebooks/                                 # Jupyter notebooks for analysis and modelling
│   ├── exploratory_data_analysis/             # Data exploration, cleaning, feature engineering
│   │   └── exploration.ipynb
│   ├── tabular_model/                         # ML experiments using PhotoObj/SpecObj tabular data
│   ├── image_model/                           # CNN experiments using Legacy Survey JPEG cutouts
│   ├── spectra_model/                         # 1D CNN models trained on FITS spectral data
│   ├── ensemble_model/                        # Multi-modal ensemble models
│   └── scalability_tests/                     # Scripts/tests for scaling to larger datasets
│
├── saved_models/                              # Checkpoints, weights, and serialised models
│   ├── tabular_model/
│   ├── image_model/
│   └── spectra_model/
│
└── results/                                   # Experiment outputs and reporting
    ├── evaluation/                            # Metrics, confusion matrices, validation reports
    │   ├── eda_flagged_columns.csv
    │   └── feature_importance_combined.csv
    ├── prediction/                            # Model predictions
    └── report/                               # Drafts, figures, and final project report
```

---

## Recommended Additional Folders

The following would complement this structure for a full data science project:

| Folder | Purpose |
|--------|---------|
| `logs/` | Training logs and experiment run history (e.g. MLflow `mlruns/`) |
| `config/` | Hyperparameter configs, YAML/JSON settings for reproducibility |
| `docs/` | Literature notes, data dictionaries, and project documentation |

