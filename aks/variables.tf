variable "azure_subscription_id" {
  description = "The Azure Subscription ID."
  type        = string
}

variable "azure_client_id" {
  description = "The Azure Client ID (Service Principal App ID)."
  type        = string
}

variable "azure_client_secret" {
  description = "The Azure Client Secret (Service Principal Password)."
  type        = string
  sensitive   = true
}

variable "azure_tenant_id" {
  description = "The Azure Tenant ID."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the AKS cluster."
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources."
  type        = string
  default     = "Central India"
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster."
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the default node pool."
  type        = number
  default     = 2
}

variable "node_vm_size" {
  description = "The size of the Virtual Machines in the default node pool."
  type        = string
  default     = "Standard_D2pls_v5"
}

variable "storage_account_name" {
  description = "The name of the storage account for storing Terraform state."
  type        = string
}
variable "container_name" {
  description = "The name of the container in the storage account for storing Terraform state."
  type        = string
}
