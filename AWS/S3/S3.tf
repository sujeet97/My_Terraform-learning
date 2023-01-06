resource "aws_s3_bucket" "finance" {   ## This resource will create the object
  bucket = "finance-30122022"
  tags = {
    description = "finance and Payroll"
  }
}

resource "aws_s3_bucket_object" "finance-2022" {   ## This resource will use for uploade the files 
  content = "/root/finance/finance-2022.doc"
  key = "finance-2022.doc"
  bucket = aws_s3_bucket.finance.id
}

data "aws_iam_group" "finance_data" {   ## this data resource will read the data which is create manually and we can give the access of s3 bucket
  group_name = "finance_analysts"
}

resource "aws_s3_bucket_policy" "finance_policy" {  ## This resource will apply the policy on s3 bucket
    bucket = aws_s3_bucket.finance.id
    policy = aws_s3_bucket_policy.finance.arn  ## Keep the policy.json file within the same configuration directory
}