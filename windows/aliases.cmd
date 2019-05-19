@echo off

REM TODO -- Move this to a central spot that sets environment variables.
set DOT_NET_CORE_MODULES=%HOME%\bin\dot_net_core_modules

if not exist "%DOT_NET_CORE_MODULES%" mkdir "%DOT_NET_CORE_MODULES%"

REM
REM Navigational
REM
doskey home=pushd %userprofile%
doskey music=pushd d:\music
doskey docs=pushd %userprofile%\documents
doskey downloads=pushd %userprofile%\downloads

REM
REM Misc
REM
doskey clear=cls

REM
REM Dev / build
REM
doskey make=devenv $* /build

REM
REM Calendar related
REM
doskey gcfe=dotnet %DOT_NET_CORE_MODULES%\gcal.dll -c Em-tertainment -f $*
