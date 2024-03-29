﻿Read-Host 'Welcome to group exporter tool (GET). GET will export an Active Directory group you select to a csv on your desktop. Press enter to continue' 
$name = Read-Host 'What is the name of the group would you like to export?'
Get-ADGroupMember -identity $name | select name | Export-csv -path c:\users\$env:USERNAME\desktop\$name.csv  -NoTypeInformation
$msg = Read-Host 'Would you like to open the file now? Y/N? [Y/N]'
 if ($msg -eq "Y") {
   ii c:\users\$env:USERNAME\desktop\$name.csv
}
else {
    (exit)
}
