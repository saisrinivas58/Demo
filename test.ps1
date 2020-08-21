param(
    [parameter(Mandatory=$true)]
	[String] $resourceGroupName,
    [parameter(Mandatory=$true)]
	[String] $location,
	[parameter(Mandatory=$true)]
	[String] $keyVaultName,
	[parameter(Mandatory=$true)]
	[String] $sku
	[parameter(Mandatory=$true)] 	
)

Function keyvaultCreate()
{
$keyVault=Get-AzureRMKeyVault -VaultName $keyVaultName -ErrorVariable notPresent -ErrorAction SilentlyContinue
$userObjectId = (Get-AzureRmADUser -SearchString $user).Id 
if (!$keyVault)
{
#creating Keyvault in azure
New-AzureRmKeyVault -VaultName $keyVaultName -ResourceGroupName $resourceGroupName -Location $location -SKU $SKU
# assigning Access policies to user

 
}
else 
{
Write-Output " keyVault already presented"

}
}





keyvaultCreate
