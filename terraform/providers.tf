terraform {
  required_version = ">= 1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-tfstate-meridian"
    storage_account_name = "sttfstatemeridian"
    container_name       = "tfstate"
    key                  = "meridian.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
