$ResourceGroupName = "rg-myapp"
$location = "uksouth"
$Pip_Name = "pip-myapp-dev-uksouth-01"

az network public-ip create `
-g $ResourceGroupName `
-l $location `
-n $Pip_Name `
--sku Standard `
--allocation-method Static `
--version IPv4
