resource "azurerm_resource_group" "rg" {
  name = "rg-${var.project-name}-e01"
  location = "West Europe"
  tags = {
    testing = "yes"
    Billing_BU = "DT"
  }
}

resource "azurerm_storage_account" "sa" {
  name = "sa${var.project-name}e01"

  resource_group_name = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Billing_BU = "DT"
    environment = "testing"
  }
}