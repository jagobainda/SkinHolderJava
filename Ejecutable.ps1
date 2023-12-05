# Establecer las dimensiones de la consola
[console]::SetWindowSize(91, 63)

# Poner la consola en UTF-8
chcp 65001 | Out-Null

# Ejecutar el JAR
java -jar ProyectoSteamAPI.jar

Pause | Out-Null