terraform {
  required_version = ">= 0.12"
  backend "azurerm" {
    storage_account_name = "ghademo0tfstate"
    container_name       = "tfstate"
    key                  = "${var.env}.terraform.tfstate"
  }
}

provider "azurerm" {
  version = "= 2.0.0"
  features {}
}
