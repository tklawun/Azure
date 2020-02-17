$vm = get-azvm -name 'testClWin10-02'
$NI = ($vm).NetworkProfile.NetworkInterfaces
$MACADD = (($NI).id | Get-AzNetworkInterface).MacAddress
$MACADD
