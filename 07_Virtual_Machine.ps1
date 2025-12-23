$Location = "uksouth"
$Rg_Name = "rg-todo-dev-uksouth"
$VnetName = "vnet-dev-uksouth-01"
$Subnet_Name = "frontend-subnet-dev-01"
$Vm_Name = "vm-todo-dev-uksouth-01"
$Vm_Size = "Standard_D2s"


  New-AzVM -Name $Vm_Name -ResourceGroupName $Rg_Name
