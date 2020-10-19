$resourceGroup = "Dev2"
$aksCluster = "skylines92"
$acr = "skylinesacr92"

$kubeletIdentityObjectId = az aks show --resource-group $resourceGroup --name $aksCluster --out tsv
$azureContainerRegistryId = az acr show `
    --resource-group $resourceGroup `
    --name $acr `
    --query id `
    --out tsv

az role assignment create --role acrpull --assignee-object-id $kubeletIdentityObjectId --scope $azureContainerRegistryId
