variable "ARM_SUBSCRIPTION_ID" {
    type = string
    description = "The Azure Subsciption ID"
}

variable "ARM_CLIENT_SECRET" {
    type = string
    description = "The Azure Service Principal Token"
    sensitive = true
}

variable "ARM_TENANT_ID" {
    type = string
    description = "The Azure Tenant ID"
}

variable "ARM_CLIENT_ID" {
    type = string
    description = "The Azure Service Principal ID"
    sensitive = true
}