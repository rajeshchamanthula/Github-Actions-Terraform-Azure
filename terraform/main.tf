terraform {
  backend "azurerm" {
    resource_group_name  = "rajesh-github-actions"
    storage_account_name = "rajeshgithub19822012"
    container_name       = "tfstatefile"
    key                  = "dev.terraform.tfstate"
  }
}
module "RG" {
  source   = "./modules/RG" #A
  rgname   = var.rgname     #B
  location = var.location
}
