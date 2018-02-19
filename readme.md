# Terraform Scripts
This is a small collection of Shell & Terraform scripts I've written to make life easier for myself.

## Overview

- aws
- azure
    - create-nav-vm
- setup
    - configure-azure
    - install-terraform

## Usage

1. Navigate to the setup folder and execute the included `install-terraform.sh` script as your user.
```
$ ./install-terraform.sh
```
2. Execute the included `configure-azure.sh` script as root.
```
$ sudo ./configure-azure.sh
```
3. Execute the newly downloaded `azure-setup.sh` script as your user.
```
$ /tmp/azure-setup.sh
```
4. Copy the resulting credentials to the `azure` folder in a text file and save it as `terraform.tfvars`.
```
$ touch terraform.tfvars
```
5. Execute the following command inside the `azure` folder to initialize terraform.
```
$ terraform init
```
6. Use the `plan` command to preview changes.
```
$ terraform plan
```
7. Use the `apply` command to push changes through to your environment.
```
$ terraform apply
```
8. Use the `destroy` command to undo all changes.
```
$ terraform destroy
```
