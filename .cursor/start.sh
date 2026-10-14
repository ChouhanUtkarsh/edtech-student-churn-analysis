#!/usr/bin/env bash
set -euo pipefail

cd /workspace/edtech-student-churn-analysis/notebooks
ln -sf ../data/Dataset.csv Dataset.csv

exec jupyter lab \
  --ip=0.0.0.0 \
  --port=8888 \
  --no-browser \
  --ServerApp.token='' \
  --ServerApp.password='' \
  --ServerApp.allow_origin='*'
