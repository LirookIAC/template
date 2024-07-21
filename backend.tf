provider "azurerm" {
  alias           = "test"
  subscription_id = var.test_subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features        {}
}

provider "azurerm" {
  alias           = "prod"
  subscription_id = var.prod_subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  features        {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "remote-backend"
    storage_account_name = "lirookbackend"
    container_name       = "state-folder"
    key                  = "test.terraform.tfstate"
  }
}

variable "test_subscription_id" {}
variable "prod_subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

# Example resource using the dev provider
resource "azurerm_resource_group" "example_dev" {
  provider = azurerm.dev
  name     = "example-resources-dev"
  location = "West Europe"
}

# Example resource using the prod provider
resource "azurerm_resource_group" "example_prod" {
  provider = azurerm.prod
  name     = "example-resources-prod"
  location = "West Europe"
}
