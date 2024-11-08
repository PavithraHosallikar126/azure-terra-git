# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "DevSecops-Statefile-Mgmt" # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "devsecopsstatefilemgt"    # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "devsecopsstatefilemgt"    # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "development.tfstate"      # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }

}

# Configure the Microsoft Azure Provider
provider "azurerm" {

  features {}
}
