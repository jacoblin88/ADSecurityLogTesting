$SecPassword = ConvertTo-SecureString "com1qaz@WSXadd" -AsPlainText -Force
$Cred = New-Object System.Management.Automation.PSCredential("atop\com_add",$SecPassword)
Add-Computer -DomainName atop.com.tw -Credential $Cred -OUPath "ou=IT Dept,dc=atop,dc=com,dc=tw" -Restart -force -newname manage01
