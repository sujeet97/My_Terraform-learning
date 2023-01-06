resource "local_file" "pet" {
    filename = "/root/pets.txt"
    content = "we love pets!"
    file_permission = "0700"
}