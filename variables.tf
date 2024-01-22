variable "project_name" {
  type = string
  description = "NTID"
}

variable "resource_group_abbrevation" {
  type = string
  description = "Resoure group"
}

variable "resource_group_profile" {
  type = string
  description = "profile"
}

variable "environment" {
  type = string
  description = "Environment"
}

variable "region" {
  type = string
  description = "Region"
}

variable "instance_count" {
  type = string
  description = "Instance count"
}

variable "virtual_network_abbrevation" {
  type = string
}

variable "virtual_network_profile" {
  type = string
}

variable "virtual_subnet_abbrevation" {
  type = string
}

variable "virtual_subnet_profile" {
  type = string
}

variable "node_pool_profile" {
  type = string
}

variable "node_pool_abbrevation" {
  type = string
}

variable "aks_abbrevation" {
  type = string
}

variable "aks_profile" {
  type = string
}

variable "list_subnet" {
  type = list(object({
    name           = string
    address_prefix = string
    security_group = string
  }))
}

variable "virtual_ip_address" {
  type = list(string)
}

variable "vm_size" {
  type = string
}

variable "node_count" {
  type = number
}

variable "aks_dns_prefix" {
  type = string
}

variable "aks_identity_type" {
  type = string
}

variable "network_plugin" {
  type = string
}

variable "service_cidr" {
  type = string
}

variable "kubernetes_instance_count" {
  type        = string
}

variable "node_pool_instance_count" {
  type        = string
}

variable "network_instance_count" {
  type        = string
}

variable "subnet_instance_count" {
  type        = string
}

variable "storage_account_instance_count" {
  type        = string
}

variable "storage_container_instance_count" {
  type        = string
}

variable "account_tier" {
  type        = string
}

variable "container_access_type" {
  type        = string
}

variable "storage_abbrevation" {
  type        = string
}

variable "storage_profile" {
  type        = string
}

variable "account_replication_type" {
  type        = string
}

variable "storage_container_abbrevation" {
  type        = string
}

variable "storage_container_profile" {
  type        = string
}

variable "user_assigned_identity_abbrevation" {
  type        = string
}

variable "user_assigned_identity_instance_count" {
  type        = string
}

variable "user_assigned_identity_profile" {
  type        = string
}

variable "terraform_state" {
  type        = string
}