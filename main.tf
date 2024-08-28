terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}


  provider "azurerm" {
  subscription_id = "484577e6-01df-4ede-8dfe-73c734005aaa"
  client_id       = "a85504b0-9e15-4e6a-8323-7dfa4f421ee5"
  client_secret   = "-Tv8Q~QReVFrx6B~7rITe0BFu6SsUjHenlnU2cxw"
esource "azurerm_resource_group" "app_grp"{
  name=local.resource_group
  location=local.location
}

resource "azurerm_app_service_plan" "app_plan1000" {
  name                = "app-plan100078"
  location            = azurerm_resource_group.app_grp.location
  resource_group_name = azurerm_resource_group.app_grp.name

  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "webapp" {
  name                = "webapp253005078"
  location            = azurerm_resource_group.app_grp.location
  resource_group_name = azurerm_resource_group.app_grp.name
  app_service_plan_id = azurerm_app_service_plan.app_plan1000.id  tenant_id       = "580d862f-e7b8-4d46-92a4-a2ae09f99cae"
  features {}
  }
locals {
  resource_group="app-grp"
  location="North Europe"
}


r
}
