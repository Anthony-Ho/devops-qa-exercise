terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "{$var.storage_acount_name}"
    container_name       = "{$var.container_name}"
    key                  = "{$var.key}"
    access_key           = "Sibu76hfO6CEcdFlp9ytlNcqMF2eDCHm1046El/Z0X5EmWsReXPiOsJgSOhft6KRFElUwloRq3vM+AStgGig0A=="
  }
}

provider "azurerm" {
  tenant_id       = "${var.tenant_id}"
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  features {}
}

module "resource_group" {
  source               = "./modules/resource_group"
  resource_group       = "${var.resource_group}"
  location             = "${var.location}"
}
# Reference the AppService Module here.
