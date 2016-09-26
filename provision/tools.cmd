chocolatey feature enable -n=allowGlobalConfirmation
cinst git
cinst git-credential-winstore
cinst python2
cinst putty
cinst sysinternals
cinst googlechrome
cinst vim
cinst procmon
cinst --allow-empty-checksums winrar
cinst ilspy
cinst hxd
cinst pip
cinst python2-x86_32
cinst vcredist2005
cinst vcredist2008
cinst vcredist2013
cinst vcredist2015
cinst --allow-empty-checksums windbg

@powershell -NoProfile -ExecutionPolicy Bypass -Command "if (!(Test-Path 'C:\Users\vagrant\Downloads\odbg110.zip')) {((new-object net.webclient).DownloadFile('http://ollydbg.de/odbg110.zip', 'C:\Users\vagrant\Downloads\odbg110.zip'))}"
@powershell -NoProfile -ExecutionPolicy Bypass -Command "if (!(Test-Path -Path 'C:\Users\vagrant\Desktop\OllyDbg')) {Expand-Archive 'C:\Users\vagrant\Downloads\odbg110.zip' -dest C:\Users\vagrant\Desktop\OllyDbg}"

@powershell -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('http://download.softpedia.com/dl/9938eae98d66ccd41aed663ae4f44528/57e94715/100004102/software/programming/PEiD-0.95-20081103.zip', 'C:\Users\vagrant\Downloads\PEiD.zip'))"
@powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive 'C:\Users\vagrant\Downloads\PEiD.zip' -dest C:\Users\vagrant\Desktop\PEiD"

@powershell -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('https://www.winitor.com/tools/pestudio/current/pestudio.zip', 'C:\Users\vagrant\Downloads\pestudio.zip'))"
@powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive 'C:\Users\vagrant\Downloads\pestudio.zip' -dest C:\Users\vagrant\Desktop\pestudio"

@powershell -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('http://www.asl-soft.hostei.com/exeinfope.zip', 'C:\Users\vagrant\Downloads\exeinfope.zip'))"
@powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive 'C:\Users\vagrant\Downloads\exeinfope.zip' -dest C:\Users\vagrant\Desktop\ExeInfoPE"

chocolatey feature disable -n=allowGlobalConfirmation
