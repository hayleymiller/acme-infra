module "hello" {
  source      = "app.terraform.io/Hayley-Onboarding-Org/hello/null"
  version     = "1.0.1" #upgrade to non-compliant version
  cost_center = var.cost_center
}
