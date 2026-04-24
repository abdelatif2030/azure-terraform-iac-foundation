resource "random_string" "suffix" {
  length  = 6
  special = false
  upper   = false
}

# -----------------------------
# Resource Group
# -----------------------------
resource "azurerm_resource_group" "main" {
  name     = "rg-${var.project_name}-${var.environment}"
  location = var.location
  tags     = var.tags
}

# -----------------------------
# Networking
# -----------------------------
module "networking" {
  source = "./modules/networking"

  project_name        = var.project_name
  environment         = var.environment
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
}

# -----------------------------
# ACR
# -----------------------------
module "acr" {
  source = "./modules/acr"

  project_name        = var.project_name
  environment         = var.environment
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  suffix              = random_string.suffix.result
}

# -----------------------------
# AKS
# -----------------------------
module "aks" {
  source = "./modules/aks"

  project_name        = var.project_name
  environment         = var.environment
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name

  node_count     = var.node_count
  vm_size        = var.vm_size
  vnet_subnet_id = module.networking.subnet_id

  depends_on = [module.networking]
}

# -----------------------------
# Storage
# -----------------------------
module "storage" {
  source = "./modules/storage"

  project_name        = var.project_name
  environment         = var.environment
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  suffix              = random_string.suffix.result
}

# -----------------------------
# AKS -> ACR Role
# -----------------------------
resource "azurerm_role_assignment" "aks_acr" {
  scope                = module.acr.acr_id
  role_definition_name = "AcrPull"

  principal_id = module.aks.principal_id

  depends_on = [module.aks, module.acr]
}