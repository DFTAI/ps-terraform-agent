FROM mcr.microsoft.com/powershell:windowsservercore-1903

ARG TERRAFORM_VERSION=0.12.13
ARG TERRAFORM_URL=https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_windows_amd64.zip
ARG AZURECLI_URL=https://aka.ms/installazurecliwindows

ADD ${AZURECLI_URL} C:/az/AzureCLI.msi

RUN echo "===> Installing Azure CLI..." \
    && pwsh -command "Start-Process msiexec.exe -Wait -ArgumentList '/I C:\az\AzureCLI.msi /quiet'"

ADD ${TERRAFORM_URL} C:/terraform/terraform.zip

RUN echo "===> Installing Terraform ${TERRAFORM_VERSION}..." \
    && pwsh -command "Expand-Archive C:/terraform/terraform.zip C:/terraform/" \
    && pwsh -command "Remove-Item C:/terraform/terraform.zip" \
    && pwsh -command "[Environment]::SetEnvironmentVariable('Path', $env:Path + ';C:\terraform', 'Machine')"

RUN echo "===> Installing powershell modules..." \
    && pwsh -command "Install-Module az -Force" \
    && pwsh -command "Install-Module pester -Force"
