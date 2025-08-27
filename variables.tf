variable "name_prefix" {
  type    = string
  default = "acme-app"
}

variable "cost_center" {
  type    = string
  default = "ACME-RND"
}

# NEW: toggle to force updates to null_resource
variable "stamp" {
  type    = string
  default = "v1"
}
