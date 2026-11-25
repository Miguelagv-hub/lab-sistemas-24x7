$logFile = ".\incidencias.log"
$fecha = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$disco = Get-PSDrive -Name C
$libreGB = [math]::Round(($disco.Free / 1GB), 2)
$contenedores = docker ps --format "{{.Names}}"

function Registrar-Incidencia($nivel, $mensaje) {
    $linea = "[$fecha] [$nivel] $mensaje"
    Add-Content -Path $logFile -Value $linea -Encoding UTF8
    Write-Host $linea -ForegroundColor Red
}

Write-Host "=== REVISION DE INCIDENCIAS 24X7 ===" -ForegroundColor Cyan

if ($libreGB -lt 20) {
    Registrar-Incidencia "CRITICO" "Espacio bajo en disco C: ($libreGB GB libres)"
}

foreach ($servicio in @("lab_prometheus", "lab_grafana")) {
    if ($contenedores -notcontains $servicio) {
        Registrar-Incidencia "ALTO" "Contenedor caido o no encontrado: $servicio"
    }
}

if (-not (Test-Path $logFile)) {
    Write-Host "[$fecha] [OK] Sin incidencias detectadas. Todo operativo." -ForegroundColor Green
} else {
    Write-Host "
Contenido actual de incidencias.log:" -ForegroundColor Yellow
    Get-Content $logFile
}
