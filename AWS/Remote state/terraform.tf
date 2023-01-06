terraform {        ## This resource block is used to impliment the remote backend and state locking
  backend "S3"{
    bucket = "Name of the S3 bucket"
    key = "finance/terraform.tfstate"
    region = "us-west-1"
    dynamodb_table = "state-locking"
  }
}