module "payroll_app" {
  source = "workspace/Example/modules/payroll-app"
  app_region = lookup(var.region, terraform.workspace)
  ami = lookup(var.ami, terraform.workspace)
}