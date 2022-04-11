Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools
<#
enable DNS Plugin
#>
<#
$pass = ConvertTo-SecureString -string 'password' -AsPlainText -Force
#>

Import-Module ADDSDeployment
Install-ADDSForest `
-DomainName "atop.com.tw"
-CreateDnsDelegation:$false `
-DatabasePath "C:\\Windows\NTDS" `
-DomainMode "WinThreshold" `
-DomainNetbiosName "atop" `
-ForestMode "WinThreshold" `
-InstallDns:$true`
-LogPath "C:\Windows\NTDS"
-NoRebootOnCompletion: $false `
-SysvolPath "C:\\Windows\SYSVOL" `
-SafeModeAdministratorPassword $pass `
-Force:$True
