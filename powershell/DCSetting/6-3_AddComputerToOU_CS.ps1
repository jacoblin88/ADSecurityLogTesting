$SecPassword = ConvertTo-SecureString "com1qaz@WSXadd" -AsPlainText -Force
$Cred = New-Object System.Management.Automation.PSCredential("atop\com_add",$SecPassword)
Add-Computer -DomainName atop.com.tw -Credential $Cred -OUPath "ou=CS Dept,dc=atop,dc=com,dc=tw" -Restart -force -newname exchange01

