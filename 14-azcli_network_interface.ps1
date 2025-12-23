$ResourceGroupName = "rg-myapp"
$location = "uksouth"
$Vnet_Name = "vnet-myapp-dev-uksouth-01"
$Subnet_Name = "frontend-subnet-dev-uksouth-01"
$Nic_name = "nic-web-dev-uksouth-01"
$Pip_Name = "pip-myapp-dev-uksouth-01"

az network nic create `
-g $ResourceGroupName `
-l $location `
--subnet $Subnet_Name `
--vnet-name $Vnet_Name `
--name $Nic_name `
--public-ip-address $Pip_Name -o table
