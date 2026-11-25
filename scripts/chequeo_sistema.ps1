$disco = Get-PSDrive -Name C
$libreGB = [math]::Round(($disco.Free / 1GB), 2)
$usadoGB = [math]::Round(($disco.Used / 1GB), 2)

Write-Host "=== CHEQUEO DE SISTEMA 24X7 ===" -ForegroundColor Cyan
Write-Host "Fecha/Hora: 2026-11-25 09:47:12"

Write-Host "
[1] Espacio en disco (C:):" -ForegroundColor Yellow
Write-Host "Unidad: C | Libre: $libreGB GB | Usado: $usadoGB GB"

Write-Host "
[2] Contenedores Docker activos:" -ForegroundColor Yellow
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"

Write-Host "
[3] Puertos locales Prometheus (9090) y Grafana (3000):" -ForegroundColor Yellow
$p9090 = Test-NetConnection -ComputerName localhost -Port 9090 -InformationLevel Quiet
$p3000 = Test-NetConnection -ComputerName localhost -Port 3000 -InformationLevel Quiet
Write-Host "Prometheus (9090): $p9090"
Write-Host "Grafana (3000):    $p3000"
