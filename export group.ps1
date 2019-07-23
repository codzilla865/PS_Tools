$name = Read-Host 'What is the name of the group would you like to export?'
$path = Read-Host 'Where would you like to save the csv? (local path)'
Get-ADGroupMember -identity $name | select name | Export-csv -path $path -NoTypeInformation
$msg = Read-Host 'Would you like to open the file now? Y/N? [Y/N]'
 if ($msg -eq "Y") {
   ii $path
}
else {
    (exit)
}