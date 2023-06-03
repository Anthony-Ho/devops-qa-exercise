# Azure GUIDS
variable "subscription_id" {
    type = string
    description = "The Azure Subsciption ID"
}
variable "client_id" {
    type = string
    description = "The Azure Service Principal ID"
}
variable "client_secret" {
    type = string
    description = "The Azure Service Principal Token"
    sensitive = true
}
variable "tenant_id" {
    type = string
    description = "The Azure Tenant ID"
    sensitive = true
}

# Terreform backend storage IDs
variable "storage_account_name" {
    type = string
    default = "tfstate27236"
    description = "The name of the Azure Storage account."
}
variable "container_name" {
    type = string
    default = "tfstate"
    description = "The name of the blob container."
}
variable "key" {
    type = string
    default = "terraform.tfstate"
    description = "The name of the state store file to be created."
}
variable "access_key" {
    type = string
    description = "The storage access key."
}

# Resource Group/Location
variable "location" {
    type = string
    default = "eastus"
    description = "The Location of the Azure Resources."
}
variable "resource_group" {
    type = string
    default = "exercise"
    description = "The name of resource group."
}
variable "application_type" {}

# Tags
variable tier {}
variable deployment {}

