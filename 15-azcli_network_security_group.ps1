$ResourceGroupName = "rg-myapp"
$location = "uksouth"
$Vnet_Name = "vnet-myapp-dev-uksouth-01"
$Subnet_Name = "frontend-subnet-dev-uksouth-01"
$Nic_name = "nic-web-dev-uksouth-01"
$Nsg_Name = "nsg-myapp-shared-uksouth-01"


az network nsg create `
--name $Nsg_Name `
--resource-group $ResourceGroupName `
--location $location `


az network nsg rule create `
--resource-group $ResourceGroupName `
--nsg-name $Nsg_Name `
--name "in-allow-ssh-admin" `
--priority 400 `
--access Allow `
--direction Inbound `
--protocol Tcp `
--source-address-prefixes Internet `
--source-port-ranges   "*" `
--destination-address-prefixes "10.0.0.4" `
--destination-port-ranges 22 `



az network nsg rule create `
--resource-group $ResourceGroupName `
--nsg-name $Nsg_Name `
--name "in-allow-http-from-internet-to-10.0.0.4" `
--priority 410 `
--access Allow `
--direction Inbound `
--protocol Tcp `
--source-address-prefixes Internet `
--source-port-ranges   "*" `
--destination-address-prefixes "10.0.0.4" `
--destination-port-ranges 80 `


az network vnet subnet update `
--resource-group $ResourceGroupName `
--vnet-name $Vnet_Name `
--name $Subnet_Name `
--network-security-group $Nsg_Name `






