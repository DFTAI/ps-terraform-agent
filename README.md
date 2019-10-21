# Docker

These Dockerfiles enable running PowerShell in a container for each Linux distribution we support.

This requires Docker 17.05 or newer.
It also expects you to be able to run Docker without `sudo`.
Please follow [Docker's official instructions][install] to install `docker` correctly.

[install]: https://docs.docker.com/engine/installation/

## Release

The release containers derive from the official distribution image,
such as `centos:7`, then install dependencies,
and finally install the PowerShell package.

These containers live at [hub.docker.com/r/microsoft/powershell][docker-release].

At about 440 megabytes, they are decently minimal,
with their size being the sum of the base image (200 megabytes)
plus the uncompressed package (120 megabytes),
and about 120 megabytes of .NET Core and bootstrapping dependencies.

[docker-release]: https://hub.docker.com/r/microsoft/powershell/


# ps-terraform-agent

ps-terraform-agent provides a way to run powershell and terraform from within a linux or windows based container.

## Why containers?
Sometimes you need to run build pipelines or command in an enclosed clean environment. Azure DevOps and containers provide the perfect way to do that.

🐱‍💻 ps-terraform-agent is built and tested in Azure DevOps and is distributed via DockerHub🐳.

[![pester](https://img.shields.io/azure-devops/tests/rdbartram/GitHubPipelines/12.svg?label=pester&logo=azuredevops)](https://dev.azure.com/rdbartram/GithubPipelines/_build/latest?definitionId=3?branchName=master)
[![](https://images.microbadger.com/badges/image/rdbartram/ps-terraform-agent.svg)](https://microbadger.com/images/rdbartram/ps-terraform-agent "size")
[![](https://images.microbadger.com/badges/version/rdbartram/ps-terraform-agent.svg)](https://microbadger.com/images/rdbartram/ps-terraform-agent "latest version")

## Got questions?

Got questions or you just want to get in touch? Use our issues page or one of these channels:

[![Pester Twitter](https://img.icons8.com/color/96/000000/twitter.png)](https://twitter.com/rd_bartram)
