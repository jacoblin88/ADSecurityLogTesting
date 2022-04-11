$pw = ConvertTo-SecureString "P@ssw0rdITadmin" -AsPlainText -Force
New-ADUser -Name "ITadmin" -SamAccountName "ITadmin" -AccountPassword $pw -Enabled $true -Path "ou=IT Dept,dc=atop,dc=com,dc=tw"

$pw = ConvertTo-SecureString "P@ssw0rdITuser" -AsPlainText -Force
New-ADUser -Name "ITuser" -SamAccountName "ITuser" -AccountPassword $pw -Enabled $true -Path "ou=IT Dept,dc=atop,dc=com,dc=tw"

$pw = ConvertTo-SecureString "P@ssw0rdRDadmin" -AsPlainText -Force
New-ADUser -Name "RDadmin" -SamAccountName "RDadmin" -AccountPassword $pw -Enabled $true -Path "ou=RD Dept,dc=atop,dc=com,dc=tw"

$pw = ConvertTo-SecureString "P@ssw0rdRDuser" -AsPlainText -Force
New-ADUser -Name "RDuser" -SamAccountName "RDuser" -AccountPassword $pw -Enabled $true -Path "ou=RD Dept,dc=atop,dc=com,dc=tw"

$pw = ConvertTo-SecureString "P@ssw0rdCSadmin" -AsPlainText -Force
New-ADUser -Name "CSadmin" -SamAccountName "CSadmin" -AccountPassword $pw -Enabled $true -Path "ou=CS Dept,dc=atop,dc=com,dc=tw"

$pw = ConvertTo-SecureString "P@ssw0rdCSuser" -AsPlainText -Force
New-ADUser -Name "CSuser" -SamAccountName "CSuser" -AccountPassword $pw -Enabled $true -Path "ou=CS Dept,dc=atop,dc=com,dc=tw"