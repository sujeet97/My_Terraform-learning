resource "local_file" "pet" {
  filename = "/root/pets.txt"
  content = "we love pets!"
}
data "local_file" "dog" {        ## It will read the attribute from the local file dog.txt
    filename = "/root/dog.txt"
  
}