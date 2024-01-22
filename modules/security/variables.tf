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

variable "user_assigned_identity_abbrevation" {
  type        = string
  description = "Instance count"
}

variable "user_assigned_identity_profile" {
  type        = string
}

variable "user_assigned_identity_instance_count" {
  type        = string
}

variable "resource_group_name" {
  type        = string
}