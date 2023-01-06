resource "aws_iam_user" "admin_user" {
  name = "lucy"
  tags = {
     description = "Technical Team Leader"
  }  
}
resource "aws_iam_policy" "adminUser" {
  name = "adminUser"
  policy = file("admin-policy-json")   // Create the policy_file.json within the configuration directory and call that by using file function. 
}

resource "aws_iam_user_policy_attachment" "lucy_admin_access" {
  user = aws_iam_user.admin_user.name
  policy_arn = aws_iam_policy.adminUser.arn
}