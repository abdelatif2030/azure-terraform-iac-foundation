output "resource_group" {
  value = azurerm_resource_group.main.name
}

output "aks_name" {
  value = module.aks.cluster_name
}

output "acr_login_server" {
  value = module.acr.login_server
}

output "storage_account" {
  value = module.storage.storage_account_name
}

output "kube_config" {
  value     = module.aks.kube_config
  sensitive = true
}