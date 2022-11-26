@ECHO OFF
SETLOCAL

title Light Minecraft (Survival)
color 0e

:MAIN
::config
SET host=127.0.0.1
SET port=40001
SET online=false
SET config=light.properties
SET commands=cmd.yml
SET bukkit=ss_basic.yml
SET spigot=ss_advanced.yml
SET purpur=ss_engine.yml
SET pufferfish=ss_performance.yml
SET paperglobal=ss_global.yml
SET paperdefworld=ss_default_world.yml
SET levelname=map

SET runtime=%LIGHT_JDK_18%\bin\java.exe
SET MEM=512
SET launcher=petal-1.19.2-pre8.jar
SET flags=-XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=20 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=40 -XX:G1MaxNewSizePercent=50 -XX:G1HeapRegionSize=16M -XX:G1ReservePercent=15
SET BETA=--add-modules=jdk.incubator.vector

"%runtime%" -Xms%MEM%M -Xmx%MEM%M %BETA% %flags% -Dcom.mojang.eula.agree=true -jar %launcher% --nogui --host %host% --server-port %port% --online-mode %online% --config %config% --bukkit-settings %bukkit% --spigot-settings %spigot% --purpur-settings %purpur% --pufferfish-settings %pufferfish% --commands-settings %commands% --level-name %levelname% --world-dir level

GOTO MAIN

::12GB = 12288
::10 = 10240
::8 = 8192
::6 = 6144
::4 = 4096
::2 = 2048d
::1 = 1024