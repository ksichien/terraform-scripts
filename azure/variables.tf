variable "client_id" {} # specified in terraform.tfvars
variable "client_secret" {} # specified in terraform.tfvars
variable "subscription_id" {} # specified in terraform.tfvars
variable "tenant_id" {} # specified in terraform.tfvars
variable "location" {
    default = "West Europe"
}
variable "address_space" {
    default = ["10.0.0.0/16"]
}
variable "address_prefix" {
    default = "10.0.2.0/24"
}
variable "vm_size" {
    default = "Standard_DS1_v2"
}
variable "computer_name" {
    default = "az-iac-dynav"
}
variable "admin_username" {
    default = "aziacnavuser"
}
variable "admin_password" {} # specified in terraform.tfvars
