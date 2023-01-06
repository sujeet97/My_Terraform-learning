resource "aws_instance" "ProjectA" {
  ami = lookup(var.ami, terraform.workspace)
  instance_type = var.instance_type
  tags = {
    Name = terraform.workspace
  }
}