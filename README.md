# lab-sistemas-24x7

Laboratorio practico de administracion de sistemas, monitorizacion (Prometheus y Grafana) y scripts de explotacion 24x7 en PowerShell.

\# lab-sistemas-24x7



Laboratorio práctico de administración de sistemas, monitorización con Prometheus y Grafana sobre Docker, y scripts de soporte 24x7 en PowerShell.



\## Componentes del proyecto

\- \*\*docker-compose.yml\*\*: Levanta los contenedores de Prometheus (puerto 9090) y Grafana (puerto 3000).

\- \*\*prometheus.yml\*\*: Configuración de recolección de métricas.

\- \*\*scripts/chequeo\_sistema.ps1\*\*: Revisa espacio en disco, contenedores Docker activos y puertos abiertos.

\- \*\*scripts/registro\_incidencias.ps1\*\*: Detecta caídas de servicios o falta de espacio y guarda el fallo en `incidencias.log`.



\## Cómo usarlo

1\. Arrancar los contenedores: `docker compose up -d`

2\. Revisar el sistema: `.\\scripts\\chequeo\_sistema.ps1`

3\. Vigilar incidencias: `.\\scripts\\registro\_incidencias.ps1`

