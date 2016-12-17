# Create Powershell profile 
# https://blogs.technet.microsoft.com/heyscriptingguy/2012/05/21/understanding-the-six-powershell-profiles/
New-Item -Path $profile -Type file -Force

# Installing Chocolatey
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

# Installing software
choco install -y notepadplusplus
choco install -y GoogleChrome
choco install -y 7zip
choco install -y winscp

exit 0





