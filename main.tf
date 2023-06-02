terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id   = "${var.ARM_SUBSCRIPTION_ID}"
  tenant_id         = "${var.ARM_TENANT_ID}"
  client_id         = "${var.ARM_CLIENT_ID}"
  client_secret     = "${var.ARM_CLIENT_SECRET}"
}

# Ccode goes here
resource "azurerm_resource_group" "exercise" {
  location = "eastus"
  name = "exercise"
}