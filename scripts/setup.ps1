# Run from the repo root: .\scripts\setup.ps1

$root = Split-Path $PSScriptRoot -Parent
Set-Location $root

# Create venv if it doesn't exist
if (-not (Test-Path ".venv")) {
    python -m venv .venv
    Write-Host "Created .venv"
}

# Activate
.\.venv\Scripts\Activate.ps1

# Upgrade pip and install requirements
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

# Register the venv as a named Jupyter kernel so VS Code / Jupyter can find it
python -m pip install ipykernel -q
python -m ipykernel install --user --name "data7903" --display-name "DATA7903 (.venv)"

Write-Host ""
Write-Host "Setup complete. Select kernel 'DATA7903 (.venv)' in VS Code / Jupyter."
