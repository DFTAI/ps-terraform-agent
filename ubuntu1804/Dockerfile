FROM mcr.microsoft.com/powershell:ubuntu-18.04

ARG TERRAFORM_VERSION=0.12.10
ARG TERRAFORM_URL=https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

RUN echo "===> Installing Azure CLI..." \
 && apt-get update \
 && apt-get install -y unzip ca-certificates curl apt-transport-https lsb-release gnupg \
 && curl -sL https://aka.ms/InstallAzureCLIDeb | bash \
 && rm -rf /var/lib/apt/lists/*

ADD ${TERRAFORM_URL} /tmp/terraform.zip

RUN echo "===> Installing Terraform ${TERRAFORM_VERSION}..." \
    &&	unzip /tmp/terraform.zip \
    && mv terraform /usr/local/bin/terraform \
    && rm /tmp/terraform.zip

RUN echo "===> Installing powershell modules..." \
 && pwsh -command "Install-Module az -Force" \
 && pwsh -command "Install-Module pester -Force"
