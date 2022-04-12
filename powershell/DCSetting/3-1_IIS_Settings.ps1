Install-WindowsFeature -name Web-Server -IncludeManagementTools
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WindowsAuthentication

Import-Module WebAdministration
New-Item -Path IIS:\\AppPools\vulnweb

New-Website -name vulnweb -PhysicalPath C:\\inetpub\vulnweb -ApplicationPool "IIS:\\AppPools\vulnweb"

Set-WebConfigurationProperty -Filter /system.webServer/security/authentication/anonymousAuthentication -Name enabled -Value false -PSPath IIS:\ -location 'Default Web Site/web01'
Set-WebConfigurationProperty -filter /system.webServer/security/authentication/windowsAuthentication -Name enabled -Value true -PSPath IIS:\ -Location 'Default Web Site/web01'