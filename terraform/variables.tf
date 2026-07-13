variable "location" {
  description = "Azure region where all resources will be deployed"
  type        = string
  default     = "East US"
}

variable "environment" {
  description = "Environment name used for tagging and naming"
  type        = string
  default     = "dev"
}

variable "project" {
  description = "Project name used for tagging and naming"
  type        = string
  default     = "meridian"
}

variable "vnet_address_space" {
  description = "Address space for the Virtual Network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_general_prefix" {
  description = "Address prefix for the general subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_data_prefix" {
  description = "Address prefix for the data subnet"
  type        = string
  default     = "10.0.2.0/24"
}
