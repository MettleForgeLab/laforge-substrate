#!/usr/bin/env bash
set -euo pipefail
echo "[bringup] docker version..."
docker version >/dev/null
echo "[bringup] nvidia-smi..."
command -v nvidia-smi >/dev/null && nvidia-smi || echo "[bringup] nvidia-smi not found"
echo "[bringup] OK"