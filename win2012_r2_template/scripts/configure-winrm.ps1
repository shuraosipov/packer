Enable-PSRemoting -Force -SkipNetworkProfileCheck

netsh advfirewall firewall set rule group="remote administration" new enable=yes >> C:\log.txt 2>&1
netsh advfirewall firewall add rule name="Open Port 5985" dir=in action=allow protocol=TCP localport=5985 >> C:\log.txt 2>&1

winrm quickconfig -q >> C:\log.txt 2>&1
winrm quickconfig -transport:http >> C:\log.txt 2>&1 
winrm set winrm/config '@{MaxTimeoutms="7200000"}'  >> C:\log.txt 2>&1
winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="0"}' >> C:\log.txt 2>&1
winrm set winrm/config/winrs '@{MaxProcessesPerShell="0"}' >> C:\log.txt 2>&1
winrm set winrm/config/winrs '@{MaxShellsPerUser="0"}' >> C:\log.txt 2>&1
winrm set winrm/config/service '@{AllowUnencrypted="true"}' >> C:\log.txt 2>&1
winrm set winrm/config/service/auth '@{Basic="true"}' >> C:\log.txt 2>&1
winrm set winrm/config/client/auth '@{Basic="true"}' >> C:\log.txt 2>&1
winrm set winrm/config/service/auth '@{Basic="true"}' >> C:\log.txt 2>&1
winrm set winrm/config/service '@{AllowUnencrypted="true"}' >> C:\log.txt 2>&1

net stop winrm >> C:\log.txt 2>&1
sc.exe config winrm start=auto >> C:\log.txt 2>&1
net start winrm >> C:\log.txt 2>&1