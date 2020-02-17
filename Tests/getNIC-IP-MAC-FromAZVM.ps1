$vm = get-azvm -name 'testClWin10-02'
$NI = ($vm).NetworkProfile.NetworkInterfaces
(Get-AzNetworkInterface $NI).MacAddress

#($NI) | Get-AzNetworkInterface

