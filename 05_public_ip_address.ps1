$Location = "uksouth"
$Rg_Name = "rg-todo-dev-uksouth"
$Pip_Name = "pip-todo-dev-uksouth"
$Nic_Name = "nic-todo-dev-uksouth-01"
$IpConfigName = "ipconfig-todo-01"

$Nic = Get-AzNetworkInterface -Name $Nic_Name -ResourceGroupName $Rg_Name


$Pip = New-AzPublicIpAddress -Name $Pip_Name `
    -Location $Location `
    -ResourceGroupName $Rg_Name `
    -Sku Standard `
    -AllocationMethod Static `

Set-AzNetworkInterfaceIpConfig -Name $IpConfigName `
-NetworkInterface $Nic `
-PublicIpAddress $Pip


 Set-AzNetworkInterface -NetworkInterface $Nic
