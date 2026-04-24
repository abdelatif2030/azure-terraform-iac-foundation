data "azurerm_kubernetes_service_versions" "current" {
  location = var.location
}

resource "azurerm_kubernetes_cluster" "main" {
  name                = "aks-${var.project_name}-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "aks-${var.project_name}-${var.environment}"

  kubernetes_version = data.azurerm_kubernetes_service_versions.current.latest_version

  default_node_pool {
    name           = "system"
    node_count     = var.node_count

    vm_size        = "Standard_DC4s_v3"

    vnet_subnet_id = var.vnet_subnet_id

    type            = "VirtualMachineScaleSets"
    os_disk_size_gb = 30
    max_pods        = 30
  }

  identity {
    type = "SystemAssigned"
  }

  oidc_issuer_enabled      = true
  workload_identity_enabled = false

  network_profile {
    network_plugin = "azure"

    service_cidr   = var.service_cidr
    dns_service_ip = var.dns_service_ip
  }

  tags = var.tags
}