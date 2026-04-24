resource "azurerm_storage_account" "main" {
  name = lower(substr(
    "st${replace(var.project_name, "-", "")}${var.suffix}",
    0,
    24
  ))

  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}