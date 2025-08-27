terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

# Generates a harmless name; no cloud resources created
resource "random_pet" "name" {
  prefix = var.name_prefix
}

# The resource our Sentinel policy evaluates
resource "null_resource" "hello" {
  triggers = {
    cost_center = var.cost_center   # required by policy
    name        = random_pet.name.id
    bump       = var.bump        # lets us force an update during demo
  }
}
