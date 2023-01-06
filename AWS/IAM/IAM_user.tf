provider "aws" {
  region = "us-west-2"
  access_key = "xyz"   // not a good approch to write the credentails we can add the credentail in .aws/config/credential or we can use the environment variable 
  secret_key = "abcd"
}

resource "aws_iam_user" "admin_user" {
  name = "lucy"
  tags = {
     description = "Technical Team Leader"
  }
  
}

