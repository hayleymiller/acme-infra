# Generates a harmless random pet name; no cloud use
resource "random_pet" "name" {
  prefix = "${var.name_prefix}-${var.environment}"
}

module "hello" {
  source      = "app.terraform.io/Hayley-Onboarding-Org/hello/null"
  version     = "1.0.0"

  name_prefix = var.name_prefix
  cost_center = var.cost_center
}


# Safe local resource we can "tag" and update repeatedly
resource "null_resource" "marker" {
  triggers = {
    name        = random_pet.name.id
    cost_center = var.cost_center
    bump        = var.bump     # change this to v2, v3, … to force updates
  }
}
