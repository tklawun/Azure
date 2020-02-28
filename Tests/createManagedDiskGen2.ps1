$location = "WestEurope"
$osVhdUri = "https://blob1of1vhd1images.blob.core.windows.net/testcontainerc/vhddisk01Fix.vhd"
$rgName = "TestVMForRPA"
$storageAccountID = "/subscriptions/aafbab9d-6469-4b57-a1ae-fec752258275/resourceGroups/TestVMForRPA/providers/Microsoft.Storage/storageAccounts/blob1of1vhd1images"
#$sourceUri = 'https://xyzstorage.blob.core.windows.net/vhd/abcd.vhd'. #<Provide location to your uploaded .vhd file>
$osDiskName = 'gen2Diskfrmgenvhd'  #<Provide a name for your disk>
$diskconfig = New-AzDiskConfig -Location $location -DiskSizeGB 127 -AccountType Standard_LRS -OsType Windows -HyperVGeneration "V2" -SourceUri $osVhdUri -CreateOption 'Import' -StorageAccountId $storageAccountID 
$azdiskGen2 = New-AzDisk -DiskName $osDiskName -ResourceGroupName $rgName -Disk $diskconfig
$azdiskGen2
#$imageConfig = New-AzImageConfig -Location $location
#$imageConfig = Set-AzImageOsDisk -Image $imageConfig -OsType Windows -OsState Generalized -BlobUri $osVhdUri
##$imageConfig = Set-AzImageOsDisk -Image $imageConfig -OsType Windows -OsState Specialized -BlobUri $osVhdUri 
#$image = New-AzImage -ImageName $imageName -ResourceGroupName $rgName -Image $imageConfig