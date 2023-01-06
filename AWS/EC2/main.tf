resource "aws_instance" "webserver" {
  ami = var.ami
  instance_type = var.instance_type 
  tags = {
    Name = "Webserver"
    description = "An Nginx on ubuntu"
  }
  user_data = <<-EOF
              #!/bin/bash
              sudo apt update
              sudo apt install nginx -y
              systemctl enable nginx
              systemctl status nginx
              EOF
  key_name = aws_key_pair.web.id
  vpc_security_group_ids = [ aws_security_group.ssh-access.id ]
  
}

resource "aws_key_pair" "web" {
  public_key = file("/root/.ssh/web.pub")   ## This is exising public key in local machine we are reading using file argument
}

resource "aws_security_group" "ssh-access" {
  name = "ssh-access"
  description = "Allow SSH access from the internet"
  ingress {
    from_port = 22
    to_port = 22
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "publicip" {
  value = aws_instance.webserver.public_ip
  
}