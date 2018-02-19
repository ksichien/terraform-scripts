variable "client_id" {} # specified in terraform.tfvars
variable "client_secret" {} # specified in terraform.tfvars
variable "object_id" {} # specified in terraform.tfvars
variable "subscription_id" {} # specified in terraform.tfvars
variable "tenant_id" {} # specified in terraform.tfvars
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
