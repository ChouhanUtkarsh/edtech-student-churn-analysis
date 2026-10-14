#!/usr/bin/env bash
set -euo pipefail

cd /workspace

pip3 install --break-system-packages -q -r edtech-student-churn-analysis/requirements.txt jupyter nbconvert ipykernel

for bin in jupyter jupyter-lab jupyter-notebook; do
  if [[ -x "${HOME}/.local/bin/${bin}" ]] && [[ ! -e "/usr/local/bin/${bin}" ]]; then
    sudo ln -sf "${HOME}/.local/bin/${bin}" "/usr/local/bin/${bin}"
  fi
done

ln -sf ../data/Dataset.csv edtech-student-churn-analysis/notebooks/Dataset.csv
