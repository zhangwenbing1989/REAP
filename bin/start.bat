@echo off
call %~dp0\env.bat
set app=%1
if "%app%" == "" (
echo application id required ,e.g 'start.bat reap-rbac'.
exit
)
for %%i in (%REAP_HOME%\apps\%app%\%app%*.jar) do set "jarProg=%%~i"
"%JAVA_HOME%\jre\bin\java" -Xmx256m -Dloader.path=%REAP_HOME%\apps\%app%/libs,%REAP_HOME%\libs  -jar %jarProg%