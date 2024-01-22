
#config azure resource group
resource "azurerm_resource_group" "this" {
  name     = "${var.project_name}-${var.resource_group_abbrevation}-${var.resource_group_profile}-${var.environment}-${var.region}-${var.instance_count}"
  location = var.region
}

module "network" {
  source                      = "./modules/network"
  location                    = var.region
  resource_group_name         = azurerm_resource_group.this.name
  project_name                = var.project_name
  environment                 = var.environment
  network_instance_count      = var.network_instance_count
  subnet_instance_count       = var.subnet_instance_count
  virtual_network_abbrevation = var.virtual_network_abbrevation
  virtual_network_profile     = var.virtual_network_profile
  virtual_subnet_abbrevation  = var.virtual_subnet_abbrevation
  list_subnet                 = var.list_subnet
  virtual_ip_address          = var.virtual_ip_address
}

module "kubernetes" {
  source                    = "./modules/kubernetes"
  location                  = var.region
  resource_group_name       = azurerm_resource_group.this.name
  project_name              = var.project_name
  environment               = var.environment
  kubernetes_instance_count = var.kubernetes_instance_count
  node_pool_instance_count  = var.node_pool_instance_count
  node_pool_profile         = var.node_pool_profile
  node_pool_abbrevation     = var.node_pool_abbrevation
  aks_abbrevation           = var.aks_abbrevation
  aks_profile               = var.aks_profile
  vm_size                   = var.vm_size
  node_count                = var.node_count
  aks_dns_prefix            = var.aks_dns_prefix
  aks_identity_type         = var.aks_identity_type
  service_cidr              = var.service_cidr
  network_plugin            = var.network_plugin
  depends_on                = [module.network]
}

module "storage" {
  source                           = "./modules/storage"
  location                         = var.region
  resource_group_name              = azurerm_resource_group.this.name
  project_name                     = var.project_name
  environment                      = var.environment
  storage_account_instance_count   = var.storage_account_instance_count
  storage_container_instance_count = var.storage_container_instance_count
  account_tier                     = var.account_tier
  container_access_type            = var.container_access_type
  storage_abbrevation              = var.storage_abbrevation
  storage_profile                  = var.storage_profile
  account_replication_type         = var.account_replication_type
  storage_container_abbrevation    = var.storage_container_abbrevation
  storage_container_profile        = var.storage_container_profile
}

module "security" {
  source                                = "./modules/security"
  location                              = var.region
  resource_group_name                   = azurerm_resource_group.this.name
  project_name                          = var.project_name
  environment                           = var.environment
  user_assigned_identity_abbrevation    = var.user_assigned_identity_abbrevation
  user_assigned_identity_instance_count = var.user_assigned_identity_instance_count
  user_assigned_identity_profile        = var.user_assigned_identity_profile
}
