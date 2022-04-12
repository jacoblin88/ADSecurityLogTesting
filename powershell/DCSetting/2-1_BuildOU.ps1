<#
build three OU
- IT Dept
- RD Dept
- Customer Dept
#>
New-ADOrganizationalUnit -Name "IT Dept" -Path "DC=atop,DC=com,DC=tw" -ProtectedFromAccidentalDeletion $true
New-ADOrganizationalUnit -Name "RD Dept" -Path "DC=atop,DC=com,DC=tw" -ProtectedFromAccidentalDeletion $true
New-ADOrganizationalUnit -Name "CS Dept" -Path "DC=atop,DC=com,DC=tw" -ProtectedFromAccidentalDeletion $true