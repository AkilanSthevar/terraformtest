# 1. Terraform Settings Block
terraform {
  # 1. Required Version Terraform
  required_version = ">= 0.13"
  # 2. Required Terraform Providers  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  # 3. Terraform Cloud Configuration
  cloud {
    organization = "ketheni"
    workspaces {
      name = "Terraformdeployment"
    }
  }
}

# 2. Terraform Provider Block for AzureRM
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.secrect_id
  }
