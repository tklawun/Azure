$vm = get-azvm -name 'testClWin10-02'
$NI = ($vm).NetworkProfile.NetworkInterfaces
#($NI).Id
#Get-AzNetworkInterface 
#(Get-AzNetworkInterface $NI).MacAddress
#(Get-AzNetworkInterface $NI).VirtualMachine
$MACADD = (($NI).id | Get-AzNetworkInterface).MacAddress
$MACADD
