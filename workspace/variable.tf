variable "region" {
 ddefault = "ca-central"  
}
variable "instance_type" {
    default = "t2.micro"
}
variable "ami" {
    type = map
    default = {
        "ProjectA" = "ami-08567xyz",
        "ProjectB" = "ami-7681abcd"
    }
  
}