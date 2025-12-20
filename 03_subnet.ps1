$VnetName = "vnet-dev-uksouth-01"
$Rg_Name =  "rg-todo-dev-uksouth"
$Subnet_Name = "frontend-subnet-dev-01"
$Subnet_CIDR = "10.0.0.0/24"

$Vnet = Get-AzVirtualNetwork -Name $VnetName -ResourceGroupName $Rg_Name

$Vnet = Add-AzVirtualNetworkSubnetConfig -Name $Subnet_Name -AddressPrefix $Subnet_CIDR -VirtualNetwork $Vnet
$Vnet | Set-AzVirtualNetwork
$Vnet.Subnets | Select-Object  Name, AddressPrefix
