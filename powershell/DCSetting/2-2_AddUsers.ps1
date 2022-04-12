$pw = ConvertTo-SecureString "IT1qaz@WSXadmin" -AsPlainText -Force
New-ADUser -Name "ITadmin" -SamAccountName "ITadmin" -AccountPassword $pw -Enabled $true -Path "ou=IT Dept,dc=atop,dc=com,dc=tw"

$pw = ConvertTo-SecureString "IT1qaz@WSXuser" -AsPlainText -Force
New-ADUser -Name "ITuser" -SamAccountName "ITuser" -AccountPassword $pw -Enabled $true -Path "ou=IT Dept,dc=atop,dc=com,dc=tw"

$pw = ConvertTo-SecureString "com1qaz@WSXadd" -AsPlainText -Force
New-ADUser -Name "com_add" -SamAccountName "com_add" -AccountPassword $pw -Enabled $true -Path "ou=IT Dept,dc=atop,dc=com,dc=tw"

$pw = ConvertTo-SecureString "RD1qaz@WSXadmin" -AsPlainText -Force
New-ADUser -Name "RDadmin" -SamAccountName "RDadmin" -AccountPassword $pw -Enabled $true -Path "ou=RD Dept,dc=atop,dc=com,dc=tw"

$pw = ConvertTo-SecureString "RD1qaz@WSXuser" -AsPlainText -Force
New-ADUser -Name "RDuser" -SamAccountName "RDuser" -AccountPassword $pw -Enabled $true -Path "ou=RD Dept,dc=atop,dc=com,dc=tw"

$pw = ConvertTo-SecureString "CS1qaz@WSXadmin" -AsPlainText -Force
New-ADUser -Name "CSadmin" -SamAccountName "CSadmin" -AccountPassword $pw -Enabled $true -Path "ou=CS Dept,dc=atop,dc=com,dc=tw"

$pw = ConvertTo-SecureString "CS1qaz@WSXuser" -AsPlainText -Force
New-ADUser -Name "CSuser" -SamAccountName "CSuser" -AccountPassword $pw -Enabled $true -Path "ou=CS Dept,dc=atop,dc=com,dc=tw"