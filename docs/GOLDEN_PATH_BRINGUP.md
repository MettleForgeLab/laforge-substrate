# Golden Path Bring-up (Node v0.1)

Goal: boot a commodity GPU node into a stable LaForge substrate.

## 1) Hardware baseline

- gaming-rig-class GPU node
- NVMe SSD
- 32GB RAM recommended

## 2) Host OS

- Windows 11 + WSL2 OR Ubuntu 22.04 LTS

## 3) GPU drivers

- install NVIDIA driver compatible with your vLLM image requirements
- verify GPU visibility with `nvidia-smi` (host or WSL2)

## 4) Docker

- install Docker Desktop (Windows) or Docker Engine (Linux)
- verify `docker ps` works

## 5) Directories

Create host directories for mounts:

- chest_memory
- chest_ledger
- chest_bench
- ui assets (if needed)

## 6) Run bring-up checks

- Windows: `scripts/bringup_checks.ps1`
- Linux: `scripts/bringup_checks.sh`

## 7) Next layer

Proceed to `laforge-model-serving` to expose A/B endpoints.
