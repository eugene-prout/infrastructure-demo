terraform {
  required_version = ">= 1.5.0"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "XXX"
    storage_account_name = "XXX"
    container_name       = "XXX"
    key                  = "XXX"
  }
}

variable "do_token" {}

provider "digitalocean" {
  token = var.do_token
}