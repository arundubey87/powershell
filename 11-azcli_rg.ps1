$ResourceGroupName = "rg-myapp"
$location = "uksouth"

az group create --name $ResourceGroupName --location $location -o table
