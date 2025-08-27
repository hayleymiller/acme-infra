module "hello" {
  source      = "app.terraform.io/Hayley-Onboarding-Org/hello/null"
  version     = "1.0.0" 

# inputs
  name_prefix = "acme-app"
  cost_center = var.cost_center
  stamp       = "v1" 
}

