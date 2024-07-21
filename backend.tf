terraform {
  backend "azurerm" {
    resource_group_name  = "remote-backend"
    storage_account_name = "lirookbackend"
    container_name       = "state-folder"
    key                  = "test.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}