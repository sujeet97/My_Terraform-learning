resource "local_file" "pet" {
  filename = var.filename[count.index]
  count = lenght(var.filename)
}