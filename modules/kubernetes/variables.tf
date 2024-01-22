variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "kubernetes_instance_count" {
  type = string
}

variable "node_pool_instance_count" {
  type = string
}

variable "project_name" {
  type = string
}

variable "aks_abbrevation" {
  type = string
}

variable "aks_profile" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "node_pool_abbrevation" {
  type = string
}

variable "node_pool_profile" {
  type = string
}

variable "aks_dns_prefix" {
  type = string
}

variable "aks_identity_type" {
  type = string
}

variable "service_cidr" {
  type = string
}

variable "network_plugin" {
  type = string
}

variable "node_count" {
  type = number
}
