variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "node_count" {
  type = number
}

variable "vm_size" {
  type = string
}

variable "vnet_subnet_id" {
  type = string
}

# 🔥 ADD THESE (missing in your version)

variable "service_cidr" {
  type    = string
  default = "10.244.0.0/16"
}

variable "dns_service_ip" {
  type    = string
  default = "10.244.0.10"
}

variable "tags" {
  type = map(string)
  default = {}
}