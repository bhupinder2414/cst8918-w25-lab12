terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "bhun0002-bhup0006-githubactions-rg"
    storage_account_name = "bhun0002bhup0006"
    container_name       = "tfstate"
    key                  = "prod.app.tfstate"
    use_oidc             = true  # Enable OIDC authentication
  }

  required_version = ">= 1.3.0"
}

provider "azurerm" {
  features {}
  use_oidc = true  # Enable OIDC authentication
}
