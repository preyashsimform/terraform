terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.1"
    }
  }
}

provider "azurerm" {
  features {}
}

# create resource group
resource "azurerm_resource_group" "resgrp" {
  # count = 2
  # name = "myrg-${count.index}"
  name     = var.resource_group_name
  location = "East US 2"
}