netsh advfirewall firewall set rule name="WinRM-HTTP" new action=block
C:/windows/system32/sysprep/sysprep.exe /generalize /oobe /unattend:C:/Windows/packer/unattended.xml /quiet /shutdown