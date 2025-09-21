terraform {
  backend "azurerm" {
    resource_group_name  = "my-aks-rg"
    storage_account_name = "my_aks_storage_tf"
    container_name       = "my_aks_blob_container_tf"
    key                  = "terraform.tfstate"   # will change for stage
  }
}
