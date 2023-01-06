resource "aws_instance" "webserver" {
  ami = "ami-7866rerre"
  instance_type = "t2.micro"
  tags = {
        name = "projectA-Webserver"
  }
  lifecycle {
    ignore_changes = [
        tags
    ]
  }
}