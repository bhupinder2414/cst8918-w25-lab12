terraform {
  required_version = ">= 1.3.0"
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
    use_oidc             = true # Enable OIDC authentication
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  use_oidc = true # Enable OIDC authentication
}
