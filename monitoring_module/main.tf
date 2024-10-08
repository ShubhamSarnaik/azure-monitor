resource "azurerm_resource_group" "monitoring" {
    name = "monitoring-1"
    location = "East US"
  
}

resource "azurerm_log_analytics_workspace" "example" {
    name = var.workspace_name
    location = var.location
    resource_group_name = var.resource_group_name
    sku = "pergb2018"
    retention_in_days = var.retention_in_days
}

output "workspace_id" {
    value = azurerm_log_analytics_workspace.example.id
}