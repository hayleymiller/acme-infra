module "hello" {
  source      = "app.terraform.io/Hayley-Onboarding-Org/hello/null"
  version     = "1.0.0"
  cost_center = var.cost_center
}
