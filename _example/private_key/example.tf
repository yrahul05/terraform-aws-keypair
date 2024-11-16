
provider "aws" {
  region = "us-east-1"
}

####----------------------------------------------------------------------------------
##  Module      : private KEY PAIR
####----------------------------------------------------------------------------------
module "private_keypair" {
  source = "../../"

  name                       = "private-key"
  environment                = "test"
  label_order                = ["name", "environment"]
  create_private_key_enabled = true
  enable_key_pair            = true
}
