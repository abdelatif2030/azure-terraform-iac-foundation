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

variable "suffix" {
  type = string
}

# ✅ ADD THIS (fixes your error)
variable "tags" {
  type    = map(string)
  default = {}
}