$machinename = Read-Host -Prompt "Please type machinename"
(get-azvm -name $machinename).vmid
