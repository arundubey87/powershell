$Location = "uksouth"
$Rg_Name = "rg-todo-dev-uksouth"
$Nsg_Name = "nsg-todo-shared-uksouth-01"
$VnetName = "vnet-dev-uksouth-01"
$Subnet_Name = "frontend-subnet-dev-01"
$Subnet_CIDR = "10.0.0.0/24"


$AllowHttp = New-AzNetworkSecurityRuleConfig -Name "in-allow-http-from-from-internet-to-10.0.0.4" `
    -Access Allow -Protocol Tcp -Direction Inbound -Priority 410 `
    -SourceAddressPrefix Internet -SourcePortRange * `
    -DestinationAddressPrefix '10.0.0.4' -DestinationPortRange 80

$AllowSsh = New-AzNetworkSecurityRuleConfig -Name "in-allow-ssh-admin" `
    -Access Allow -Protocol Tcp -Direction Inbound -Priority 400 `
    -SourceAddressPrefix Internet -SourcePortRange * `
    -DestinationAddressPrefix '10.0.0.4' -DestinationPortRange 22


$Nsg = New-AzNetworkSecurityGroup -Name  $Nsg_Name `
    -ResourceGroupName $Rg_Name `
    -Location $Location `
    -SecurityRules $AllowHttp,$AllowSsh


$Vnet =  Get-AzVirtualNetwork -Name $VnetName -ResourceGroupName $Rg_Name


 Set-AzVirtualNetworkSubnetConfig -Name $Subnet_Name -VirtualNetwork $Vnet `
 -AddressPrefix $Subnet_CIDR -NetworkSecurityGroup $Nsg


 Set-AzVirtualNetwork -VirtualNetwork $Vnet
