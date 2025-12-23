$ResourceGroupName = "rg-myapp"
$Vnet_Name = "vnet-myapp-dev-uksouth-01"
$Address_Space = "10.0.0.0/16"
$Subnet_Name = "frontend-subnet-dev-uksouth-01"
$SubnetAddressPrefix = "10.0.0.0/24"



az network vnet create --name $Vnet_Name --resource-group $ResourceGroupName --address-prefixes $Address_Space --subnet-name $Subnet_Name --subnet-prefixes $SubnetAddressPrefix -o table

