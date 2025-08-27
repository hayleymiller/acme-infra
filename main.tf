terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

# The resource Sentinel will evaluate
resource "null_resource" "demo" {
  triggers = {
    cost_center = var.cost_center  # <-- policy requires this to be non-empty
    bump        = var.bump         # <-- we toggle this to force updates
  }
}

#go
