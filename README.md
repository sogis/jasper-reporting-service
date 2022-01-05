# jasper-reporting-service

Software- und Docker-Build von [https://github.com/qwc-services/jasper-reporting-service](https://github.com/qwc-services/jasper-reporting-service) wegen lizenzierten Schriftarten ("Frutiger").

Die Schriftarten werden in einer `fonts-extension.jar`-Datei vorgehalten, welche jedoch nicht zur Laufzeit von der Jasper-Server-Spring-Boot-Anwendung verwendet werden kann. Aus diesem Grund muss sowohl die Fatjar-Datei (der eigentliche Jasper-Server) wie auch das Dockerimage selbst erstellt werden. Für die anderen `qwc_services` wird jeweils als Base Image die Dockerimages verwendet, welche aus dem CI/CD Build des `qwc_services`-Repo enstehen. 

Der Build muss bei Bedarf manuell gestartet werden und wird täglich um Mitternacht ausgelöst.

Es wird immer ein `latest` und ein `build number` Image getaggt.


