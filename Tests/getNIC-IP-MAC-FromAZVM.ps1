$machinename = Read-Host -Prompt "Please type machinename"
$vm = get-azvm -name $machinename
$NI = ($vm).NetworkProfile.NetworkInterfaces
$MACADD = (($NI).id | Get-AzNetworkInterface).MacAddress
$MACADD
