@echo off

set _MSBuild="%ProgramFiles(x86)%\MSBuild\14.0\Bin\MSBuild.exe"
if not exist %_MSBuild% set _MSBuild="%ProgramFiles%\MSBuild\14.0\Bin\MSBuild.exe"
if not exist %_MSBuild% echo Error: Could not find MSBuild.exe. && exit /b 1

%_MSBuild% "%~dp0\src\MartinCostello.BrowserStack.Automate.msbuild" /v:minimal /maxcpucount /nodeReuse:false %*

echo. && echo Build completed at %TIME%.
