terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
    features {}
    subscription_id = "6f89d107-0df7-4bf9-9a60-43a792310639"
}
