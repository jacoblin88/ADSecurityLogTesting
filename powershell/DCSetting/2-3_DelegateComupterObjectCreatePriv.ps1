Import-Module -Name 'ActiveDirectory','DSACL'

$TargetDN_IT = 'OU=IT Dept,DC=atop,DC=com,DC=tw'
$TargetDN_RD = 'OU=RD Dept,DC=atop,DC=com,DC=tw'
$TargetDN_CS = 'OU=CS Dept,DC=atop,DC=com,DC=tw'

$DelegateDN = 'CN=com_add,OU=IT Dept,DC=atop,DC=com,DC=tw'

Add-DSACLCreateChild -TargetDN $TargetDN_IT -DelegateDN $DelegateDN -ObjectTypeName Computer
Add-DSACLCreateChild -TargetDN $TargetDN_RD -DelegateDN $DelegateDN -ObjectTypeName Computer
Add-DSACLCreateChild -TargetDN $TargetDN_CS -DelegateDN $DelegateDN -ObjectTypeName Computer
