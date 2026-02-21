Write-Host "[bringup] docker version..."
docker version | Out-Null

Write-Host "[bringup] wsl status..."
wsl.exe -l -v

Write-Host "[bringup] nvidia-smi (host) if present..."
try { nvidia-smi | Out-Host } catch { Write-Host "nvidia-smi not found on host (ok if WSL-only)" }

Write-Host "[bringup] OK"