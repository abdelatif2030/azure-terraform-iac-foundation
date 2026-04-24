variable "project_name" {
  description = "Project name used for all Azure resources (must be lowercase, no hyphens)"
  type        = string
  default     = "devopsportfolio"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "node_count" {
  description = "Number of AKS worker nodes (keep low for free tier)"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "VM size for AKS nodes (must be supported in region/subscription)"
  type        = string
  default     = "Standard_D4s_v3"
}

variable "tags" {
  description = "Common resource tags"
  type        = map(string)

  default = {
    Project     = "DevOpsPortfolio"
    ManagedBy   = "Terraform"
    Environment = "Dev"
  }
}