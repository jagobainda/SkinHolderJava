function bienvenida {
    Write-Output "BIENVENIDO AL INSTALADOR DE REQUERIMIENTOS DE SKIN HOLDER"
    Write-Host ""
    Write-Output "A CONTINUACION SE TE PROPORCIONARA TODO LO NECESARIO PARA QUE EL PROGRAMA FUNCIONE"
    Write-Host ""   

    Pause | Out-Null
    Clear-Host
}

function comprobarVersionJava {
    Write-Host "ESTA ES LA VERSION DE JAVA QUE TIENES INSTALADA: [34m(ej: java version ""17.0.4.1"" 2022-08-18 LTS)[0m"
    Write-Host ""
    java -version
    Write-Host ""
    Write-Host "[32mSI TIENES INSTALADA LA VERSION 17 O SUPERIOR NO NECESITAS ACTUALIZARLA[0m"
    Write-Host "[31mSI DICE [java no se reconoce como un comando interno o externo] TENDRAS QUE INSTALARLO[0m"
    Pause | Out-Null
}

function elegirNavegador {
    Clear-Host
    do {
        $opcion = Read-Host "Elije el navegador con el que quieres descargar Java 17.0.4.1: 
        1 - Firefox
        2 - Chrome
        3 - Microsoft Edge
        4 - Copiar link al portapapeles
        5 - Ya tengo Java 17 o superior instalado"

        switch ($opcion) {
            1 { Start-Process firefox "https://download.oracle.com/java/17/archive/jdk-17.0.4.1_windows-x64_bin.exe" }
            2 { Start-Process chrome "https://download.oracle.com/java/17/archive/jdk-17.0.4.1_windows-x64_bin.exe" }
            3 { Start-Process microsoft-edge: "https://download.oracle.com/java/17/archive/jdk-17.0.4.1_windows-x64_bin.exe" }
            4 { Set-Clipboard -Value "https://download.oracle.com/java/17/archive/jdk-17.0.4.1_windows-x64_bin.exe" }
            5 { break }
            default { Write-Host "INTRODUCE UNA OPCION VALIDA" }
        }
    } while ($opcion -notmatch "^[12345]$")
}

function instalacionJava {
    Write-Host "[32mUNA VEZ DESCARGADO SOLO TIENES QUE INSTALADO Y YA ESTARA TODO LISTO PARA USAR SKIN HOLDER.[0m"
}




bienvenida

comprobarVersionJava

elegirNavegador

instalacionJava

Pause | Out-Null
