resource "local_file" "pet" {
  filename = "/root/pets.txt"
  content = "we love pets!"
  file_permission = "700"
  lifecycle {
     create_before_destroy = true
  }
}