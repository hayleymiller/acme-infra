variable "name_prefix"  { type = string, default = "acme" }
variable "environment"  { type = string, default = "dev" }
variable "cost_center"  { type = string, default = "ACME-RND" }
# harmless toggle so you can force a change for live demos
variable "bump"         { type = string, default = "v1" }
