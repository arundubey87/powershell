$VnetName = "vnet-dev-uksouth-01"
$Location = "uksouth"
$Rg_Name =  "rg-todo-dev-uksouth"
$Vnet_CIDR = "10.0.0.0/16"
New-AzVirtualNetwork -Name $VNetName -Location $Location -ResourceGroupName $Rg_Name -AddressPrefix $Vnet_CIDR

