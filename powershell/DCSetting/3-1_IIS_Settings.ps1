Install-WindowsFeature -name Web-Server -IncludeManagementTools

Import-Module WebAdministration
New-Item -Path IIS:\\AppPools\myapp_pool

New-Item 'IIS:\Sites\Default Web Site\web01' -physicalPath C:\WWW\Web -type Application -applicaionPool myapp_pool

Set-WebConfigurationProperty -Filter /system.webServer/security/authentication/anonymousAuthentication -Name enabled -Value false -PSPath IIS:\ -location 'Default Web Site/web01'
Set-WebConfigurationProperty -filter /system.webServer/security/authentication/windowsAuthentication -Name enabled -Value true -PSPath IIS:\ -Location 'Default Web Site/web01'