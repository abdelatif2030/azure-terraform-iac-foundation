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

# ✅ ADD THIS (required fix)
variable "tags" {
  type    = map(string)
  default = {}
}