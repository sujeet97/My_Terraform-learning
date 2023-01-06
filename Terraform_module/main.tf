## Module - Any configuration directory containing a set of configuration files is called module.

## Example how to use module in terraform.

module "dev_server" {
  source = "../AWS/EC2"
}