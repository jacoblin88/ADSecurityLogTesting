<#
build three OU
- IT Dept
- RD Dept
- Customer Dept
#>
New-ADOrganizationUnit -Name "IT Dept" -Path "DC=atop,DC=com,DC=tw" -ProtectedFromAccidentalDeletion $true
New-ADOrganizationUnit -Name "RD Dept" -Path "DC=atop,DC=com,DC=tw" -ProtectedFromAccidentalDeletion $true
New-ADOrganizationUnit -Name "CS Dept" -Path "DC=atop,DC=com,DC=tw" -ProtectedFromAccidentalDeletion $true