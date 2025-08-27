# acme-infra/main.tf
data "aws_ami" "al2" {
  most_recent = true
  owners      = ["amazon"]
  filter { name = "name"; values = ["amzn2-ami-hvm-*-x86_64-gp2"] }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.al2.id
  instance_type = var.instance_type
  tags = {
    Name        = "${var.name_prefix}-web"
    cost_center = var.cost_center
  }
}
