resource azurerm_resource_group "main" {
  name     = "${var.ApplicationName}-${var.EnvironmentName}"
  location = "West Europe"
}