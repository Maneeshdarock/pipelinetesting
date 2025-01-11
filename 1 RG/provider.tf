terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.15.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "winter-rg"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "wintersa"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "winter"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "dev.terraform.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
  features {}
  subscription_id = "cdad125a-4251-4921-9b54-69011bb91811"
}