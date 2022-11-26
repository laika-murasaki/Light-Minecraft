@ECHO OFF
SETLOCAL

title Light Minecraft (Proxy)
color 0e

:MAIN

SET runtime=%LIGHT_JDK_18%\bin\java.exe
SET MEM=1024
SET launcher=velocity-3.1.2-SNAPSHOT-185.jar
SET flags=-XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:MaxInlineLevel=15

"%runtime%" -Xms%MEM%M -Xmx%MEM%M %flags% -jar %launcher%

GOTO MAIN

::12GB = 12288
::10 = 10240
::8 = 8192
::6 = 6144
::4 = 4096
::2 = 2048d
::1 = 1024