variable "project_name" {
  type        = string
  description = "NTID"
}

variable "environment" {
  type        = string
  description = "Environment"
}

variable "location" {
  type        = string
  description = "Region"
}

variable "storage_container_instance_count" {
  type        = string
  description = "Instance count"
}

variable "storage_account_instance_count" {
  type        = string
  description = "Instance count"
}

variable "storage_abbrevation" {
  type = string
}

variable "storage_profile" {
  type = string
}

variable "storage_container_abbrevation" {
  type = string
}

variable "storage_container_profile" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "account_tier" {
  type = string
}

variable "account_replication_type" {
  type = string
}

variable "container_access_type" {
  type = string
}
