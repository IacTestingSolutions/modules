output "sa-name" {
  value = azurerm_storage_account.sa.name
}

output "sa-id" {
  value = azurerm_storage_account.sa.id
}

output "rg-name" {
  value = azurerm_resource_group.rg.name
}

output "rg-id" {
  value = azurerm_resource_group.rg.id
}

output "location" {
  value = azurerm_resource_group.rg.location
}