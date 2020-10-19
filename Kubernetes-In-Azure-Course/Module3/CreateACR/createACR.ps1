# Create the registry
az acr create --resource-group Dev2 --name skylinesacr92 --sku basic

# Log into the ACR
az acr login --name skylinesacr92

# Build Docker image
docker build -t golangwebapi .

# Tag a Docker image
docker tag golangwebapi skylinesacr92.azurecr.io/go/webapi

# Push Docker image to ACR
docker push skylinesacr92.azurecr.io/go/webapi

# List container images
az acr repository list --name skylinesacr --output table

# AKS to ACR Authentication
az aks update -n skylines92 -g dev2 --generate-ssh-keys --attach-acr skylinesacr92