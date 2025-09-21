# resource "azurerm_resource_group" "aks" {
#   name     = var.resource_group_name
#   location = var.location
# }

# resource "azurerm_storage_account" "storage_account" {
#   name                     = "myaksstoragetf" # Storage account names must be between 3 and 24 characters in length and may contain numbers and lowercase letters only.
#   resource_group_name      = azurerm_resource_group.aks.name
#   location                 = azurerm_resource_group.aks.location
#   account_tier             = "Standard"
#   account_replication_type = "GRS"

#   tags = {
#     environment = "staging"
#   }
# }

# data "azurerm_storage_blob" "blob_container" {
#   name                   = "my-aks-blob-container"
#   storage_account_name   = azurerm_storage_account.storage_account.name
#   storage_container_name = "myaksblobcontainertf" # The name of the container within the storage account
# }

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  location            = var.location  #azurerm_resource_group.aks.location
  resource_group_name = var.resource_group_name  #azurerm_resource_group.aks.name
  dns_prefix          = "${var.aks_cluster_name}-dns"

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.node_vm_size
  }

  identity {
    type = "SystemAssigned"
  }
}