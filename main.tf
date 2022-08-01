terraform {
  required_version = ">= 0.13"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
    
resource "azurerm_resource_group" "aks_rg" {
  name = "Terraform-rg"
  location = "East US"
  
  output "id" {
  value = data.azurerm_resource_group.aks_rg.id
  }
