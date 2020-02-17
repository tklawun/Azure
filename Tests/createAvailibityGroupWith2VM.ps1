$loc = "West Europe"
$RGN = "TestAvailableGroup"
#if (!((Get-AzResourceGroup -name $RGN).ResourceGroupName -eq $RGN)){
    New-AzResourceGroup -Name $RGN -location $loc -Force
#}
New-AzKeyVault -Name $RGN'Vault' -ResourceGroupName $RGN -Location 'West Europe'