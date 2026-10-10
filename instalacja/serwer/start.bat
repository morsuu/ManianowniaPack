@echo off
rem ManianowniaPack: aktualizacja paczki i start serwera (Windows)
cd /d "%~dp0"
java -jar packwiz-installer-bootstrap.jar -g -s server https://raw.githubusercontent.com/morsuu/ManianowniaPack/main/pack.toml
java -Xms4G -Xmx8G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:InitiatingHeapOccupancyPercent=15 -jar fabric-server-launch.jar nogui
pause
