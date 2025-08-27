output "demo_label" {
  value = "env=${var.environment} name=${random_pet.name.id} cost_center=${var.cost_center}"
}
