resource "aws_instance" "webserver" {
    ami = "abc896xyz"
    instance_type = "t2.micro"
    provisioner "local-exec" {
      on_failure = continue
      command = "echo instance ${aws_webserver.publicip} created! > tmp/instant_state.txt"
    }
  provisioner "local-exec" {
    when = destroy
    command = "echo instance ${aws_webserver.publicip} destroy > tmp/instant_state.txt"
  }
}