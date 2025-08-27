module "hello" {
  # use your org name here (visible in HCP Terraform org settings)
  source      = "Hayley-Onboarding-Org/hello/null"
  version     = "1.0.0"
  cost_center = var.cost_center
}

##Demo
