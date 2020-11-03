# Create authentication to Azure from GitHub Actions
az ad sp create-for-rbac --name "githubactions" --role contributor --scopes /subscriptions/220284d2-6a19-4781-87f8-5c564ec4fec9 --sdk-auth

# Expose the token
# username is 00000000-0000-0000-0000-000000000000
az acr login --name skylinesacr92 --expose-token