$Location = "uksouth"
$Rg_Name =  "rg-todo-dev-uksouth"
$Nic_Name = "nic-todo-dev-uksouth-01"
$Vnet_Name = "vnet-dev-uksouth-01"
$Subnet_Name = "frontend-subnet-dev-01"



 $Vnet = Get-AzVirtualNetwork -Name $Vnet_Name -ResourceGroupName $Rg_Name
 $Subnet = Get-AzVirtualNetworkSubnetConfig -Name $Subnet_Name -VirtualNetwork $Vnet


 New-AzNetworkInterface -Name $Nic_Name `
 -Location $Location `
 -ResourceGroupName $Rg_Name `
 -Subnet $Subnet `
 -IpConfigurationName  "ipconfig-todo-01"


