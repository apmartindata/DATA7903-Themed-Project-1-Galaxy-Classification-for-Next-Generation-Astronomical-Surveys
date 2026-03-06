#!/bin/bash
# Run from the repo root: bash scripts/setup.sh

cd "$(dirname "$0")/.."

# Create venv if it doesn't exist
if [ ! -d ".venv" ]; then
    python -m venv .venv
    echo "Created .venv"
fi

# Activate
source .venv/bin/activate

# Upgrade pip and install requirements
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

# Register the venv as a named Jupyter kernel so VS Code / Jupyter can find it
python -m pip install ipykernel -q
python -m ipykernel install --user --name "data7903" --display-name "DATA7903 (.venv)"

echo ""
echo "Setup complete. Select kernel 'DATA7903 (.venv)' in VS Code / Jupyter."