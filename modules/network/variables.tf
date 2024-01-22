variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "environment" {
  type = string
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

variable "network_instance_count" {
  type = string
}

variable "subnet_instance_count" {
  type = string
}

variable "project_name" {
  type = string
}

variable "virtual_ip_address" {
  type = list(string)
}

variable "list_subnet" {
  type = list(object({
    name           = string
    address_prefix = string
    security_group = string
  }))
}
