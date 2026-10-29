$ErrorActionPreference = 'Stop'
New-Item -ItemType Directory -Force out | Out-Null
$csc = Join-Path $env:WINDIR 'Microsoft.NET\Framework64\v4.0.30319\csc.exe'
& $csc /nologo /target:winexe /optimize+ /out:out\DQTech-CSM-Tool.exe /win32manifest:app.manifest /r:System.Windows.Forms.dll /r:System.Drawing.dll /r:System.Web.Extensions.dll /r:System.ServiceProcess.dll /r:System.Security.dll .\DQTechTool.cs
if ($LASTEXITCODE -ne 0) { throw 'Build failed' }
Get-FileHash out\DQTech-CSM-Tool.exe
