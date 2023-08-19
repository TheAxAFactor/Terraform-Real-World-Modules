resource "azurerm_log_analytics_workspace" "axa_loga" {
  count               = length(var.names)
  name                = var.names[count.index]
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  retention_in_days   = var.retention_in_days
  }
