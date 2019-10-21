FROM mcr.microsoft.com/powershell:ubuntu-18.04

ARG TERRAFORM_VERSION=0.12.10
ARG TERRAFORM_URL=https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

RUN apt-get -o Acquire::Check-Valid-Until=false update \
    && apt-get -o Acquire::Check-Valid-Until=false install -y unzip \
    && rm -rf /var/lib/apt/lists/*

ADD ${TERRAFORM_URL} /tmp/terraform.zip

RUN echo "===> Installing Terraform ${TERRAFORM_VERSION}..." \
    &&	unzip /tmp/terraform.zip \
    && mv terraform /usr/local/bin/terraform \
    && rm /tmp/terraform.zip
