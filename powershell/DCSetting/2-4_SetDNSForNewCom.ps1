<#
Set DC IP as our dns ip
#>
$IntId = Get-NetIPAddress -ipaddress 10.0.1.* | Select-Object -Property InterfaceIndex
$IntId = $IntId."InterfaceIndex"
$DCIP = "10.0.1.104"
Set-DnsClientServerAddress -InterfaceIndex $IntId -ServerAddress($DCIP,"8.8.8.8")