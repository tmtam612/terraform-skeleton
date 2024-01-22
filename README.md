### Setup AWS client and eksctl
```shell
# Install the Chocolatey.
@powershell -NoProfile -ExecutionPolicy Unrestricted -Command "[Net.WebRequest]::DefaultWebProxy.Credentials = [Net.CredentialCache]::DefaultCredentials; iex ((New-Object Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin

# Test that your installation was successful
choco -v

# Install Azure Cli
https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli

# Login Azure
az login

az account set --subscription <subscription-id>

```

### Install Terraform client
```shell
choco install terraform

# Verify Terraform installed
terraform -help
```

### Execute terraform commands
```shell
terraform init
terraform validate
terraform plan -var-file=./environment/dev.tfvars
terraform apply -var-file=./environment/dev.tfvars -auto-approve
```

### Clean-up
```shell
# Destroy all resources
terraform destroy -var-file=./environment/dev.tfvars -auto-approve
terraform apply -destroy -var-file=./environment/dev.tfvars -auto-approve

# Delete all state files
rm -rf .terraform* & rm -rf terraform.tfstate*
```

### Verify
```shell
nslookup <api-server-endpoint>
```

### Install 
kubectl CLI

### Configure kube config for kubectl
```shell
az aks get-credentials --resource-group <resource-group-name> --name <kubernetes-name>
```

### List Worker Nodes
```shell
kubectl get nodes
kubectl get nodes -o wide
```

### Verify Services
```shell
kubectl get svc
```
