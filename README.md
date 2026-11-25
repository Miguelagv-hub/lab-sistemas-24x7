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


## Evidencias del laboratorio
<img width="721" height="408" alt="Captura de pantalla 2026-11-25 104841" src="https://github.com/user-attachments/assets/6f12ec1c-b181-4920-94a2-b1346d7b5174" />
<img width="959" height="182" alt="Captura de pantalla 2026-11-25 111008" src="https://github.com/user-attachments/assets/4407c788-9a29-4b28-bc55-f110bb6a1902" />
<img width="905" height="226" alt="Captura de pantalla 2026-11-25 110649" src="https://github.com/user-attachments/assets/05a3b365-4480-4735-87e9-72bed4303809" />



