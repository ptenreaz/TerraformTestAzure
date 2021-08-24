# logon to your azure tenant
az login

# if you have multiple subscriptions then select the one you want to use
az account set -s "Azure Pipos"



$env:RESOURCE_GROUP_NAME = 'pipos-state'
$env:STORAGE_ACCOUNT_NAME = 'pipostfstate'
$env:CONTAINER_NAME = 'tstate'
# Create resource group
az group create --name $env:RESOURCE_GROUP_NAME --location francecentral
# Create storage account
az storage account create --resource-group $env:RESOURCE_GROUP_NAME --name $env:STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob
# Get storage account key
$env:ACCOUNT_KEY = (az storage account keys list --resource-group $env:RESOURCE_GROUP_NAME --account-name $env:STORAGE_ACCOUNT_NAME --query '[0].value' -o tsv)
# Create blob container
az storage container create --name $env:CONTAINER_NAME --account-name $env:STORAGE_ACCOUNT_NAME --account-key $env:ACCOUNT_KEY
