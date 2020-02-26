$ContainerName = "blob1of1vhd1images" 
$StorageAccount = Get-AzStorageAccount -ResourceGroupName "TestVMForRPA" -Name $ContainerName
($StorageAccount).Context
$StorageContainer = Get-AzStorageContainer -context ($StorageAccount).Context
($StorageContainer).Context   
(Get-AzStorageBlob -Container "testcontainerc" -Context ($StorageAccount).Context).Name

