
# Infrastructure As Code

IaC allows you to manage infra with configuration files
rather than through a GUI.

Allows you to build, change, and manage your infrastructure in a safe,
consistent, and repeatable way by defining resource configurations
that you can version, reuse, and share.

Terraform is HAshiCorp's IaC tool.

- lets you define resources and infra in human-readable, declarative configuration files
- lets you manage and version your infra in a VCS
- cloud agnostic
- track resource changes throughout your deployments

## Standardize deployment workflow

- providers define individual units of infrastructure
  - i.e. compute instances or private networks
- compose resources from different providers into reusable TF configurations
  - called "modules"
- manage modules with a consistent language and workflow

Terraform config is `declarative` meaning that it describes the desired END-STATE
of the infra, not the steps to get there.

- TF providers automatically determine the steps to get to the desired state

by calculating the dependencies between resources to create or destroy them in the correct order

## Steps

1. Scope: Identify the infra needed for project

2. Author: Write the config files

3. Initialize: Run `terraform init` to download and configure the providers (as plugins)

4. Plan: Run `terraform plan` to see what changes will be made.

5. Apply: Run `terraform apply` to make the changes

6. Destroy: Run `terraform destroy` to remove the infra

## Track infrastructure

- TF keeps track of your real infrastructure in a state file, which acts as a source of truth for your environment
- TF uses the state file to determine the changes to make to your infra so that it will match your configuration
