#!/usr/bin/env bash
set -e
echo "=== [1/4] Instalando dependencias ==="
pip install -q -r requirements.txt
echo "=== [2/4] Verificando configuraci3n CCT-20 ==="
python3 src/prepare_data.py
echo "=== [3/4] Evaluando m1tricas CIS vs TRANS y Robustez ==="
python3 src/evaluate.py
python3 src/robustness.py
echo "=== [4/4] Generando reporte de monitoreo ecol3gico ==="
python3 src/monitoring.py
echo "✅ Ejecuci3n finalizada correctamente."
