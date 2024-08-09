resource azurerm_resource_group main {
  name     = "${ApplicationName}-${EnvironmentName}"
  location = "West Europe"
}