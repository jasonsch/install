@echo off

copy common\_vimrc %HOME%
copy windows\profile.ps1 %HOME%\Documents\WindowsPowerShell
copy windows\aliases.cmd %HOME%\Documents

REM
REM Copy over windows binaries.
REM
REM TODO

REM
environ -a Path "C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE"
regset "HKCU\Software\Microsoft\Command Processor\AutoRun" "%%USERPROFILE%%\Documents\aliases.cmd"
