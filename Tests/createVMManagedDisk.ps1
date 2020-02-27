$location = "WestEurope"
$osVhdUri = "https://blob1of1vhd1images.blob.core.windows.net/testcontainerc/vhddisk01Fix.vhd"
$imageName = "TestVMBKXWinPE01"
$rgName = "TestVMForRPA"
$imageConfig = New-AzImageConfig -Location $location
$imageConfig = Set-AzImageOsDisk -Image $imageConfig -OsType Windows -OsState Generalized -BlobUri $osVhdUri
$image = New-AzImage -ImageName $imageName -ResourceGroupName $rgName -Image $imageConfig