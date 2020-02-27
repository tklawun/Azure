Connect-AzAccount
$ResourceGroupName = "TestVMForRPA"
$StorageAccountName = "blob1of1vhd1images"
Get-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $StorageAccountName
