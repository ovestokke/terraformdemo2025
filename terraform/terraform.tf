terraform {
  required_version = "~> 1.8"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.94"
    }
  }

  backend "azurerm" {
    container_name       = "fagkveldstates"
    key                  = "state.tfstate"
    storage_account_name = "stokkestates01"
    use_azuread_auth     = true
    snapshot             = true
  }
}


# Default provider needs to be something..
provider "azurerm" {
  subscription_id            = "33d0b471-9e2e-495f-a6f6-c2c59c3c5637"

  features {}
}

