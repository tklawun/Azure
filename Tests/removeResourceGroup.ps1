$RGN = "TestAvailableGroup"
Remove-AzResourceGroup -Name $RGN -Force
(Get-AzResourceGroup).ResourceGroupName
