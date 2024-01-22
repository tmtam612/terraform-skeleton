resource "azurerm_kubernetes_cluster" "cluster" {
  location            = var.location
  resource_group_name = var.resource_group_name
  name                = "${var.project_name}-${var.aks_abbrevation}-${var.aks_profile}-${var.environment}-${var.location}-${var.kubernetes_instance_count}"
  default_node_pool {
    enable_auto_scaling = false
    node_count          = var.node_count
    vm_size             = var.vm_size
    name                = "${var.project_name}-${var.node_pool_abbrevation}-${var.node_pool_profile}-${var.environment}-${var.location}-${var.node_pool_instance_count}"
  }
  dns_prefix                = var.aks_dns_prefix
  sku_tier                  = "Free"
  oidc_issuer_enabled       = true //enable openID connect
  workload_identity_enabled = true //enable workload identity

  tags = {
    env = var.environment
  }

  lifecycle {
    ignore_changes = [default_node_pool[0].node_count] //when auto scaling, node 0 will not be changed
  }
  identity {
    type = var.aks_identity_type
  }
  network_profile {
    network_plugin = var.network_plugin
    service_cidr = var.service_cidr
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "name" {
  kubernetes_cluster_id = azurerm_kubernetes_cluster.cluster.id
  vm_size               = var.vm_size
  name                  = "${var.project_name}-${var.node_pool_abbrevation}-${var.node_pool_profile}-${var.environment}-${var.location}-${var.node_pool_instance_count}"
  enable_auto_scaling   = false
  tags = {
    env = var.environment
  }
  priority       = "Spot" //spot node, cheaper but can be terminated by Azure anytime
  spot_max_price = -1
  lifecycle {
    ignore_changes = [node_count]
  }
#   vnet_subnet_id = var.
}
