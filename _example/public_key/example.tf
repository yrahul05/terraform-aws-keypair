
provider "aws" {
  region = "us-east-1"
}

####----------------------------------------------------------------------------------
##  Module      : public KEY PAIR
####----------------------------------------------------------------------------------
module "public_keypair" {
  source = "../../"

  name        = "public-key"
  environment = "test"
  label_order = ["name", "environment"]
  public_key  = "ssh-rsa AB3NzaC1yc2EAAAADAQABAAABgQChJ2VNjqGjWiwOt0qX6PvXKkqNXF/XXPdOCrMB6KqeS63IeiQiwtc8w2S+Q91hnPXRRgpBkAC1xJpsrpouo9SHd9wacuBbafgNgHqBwALCZuYs3UESaT8r2/5Dr13r5xAcH3RNBS7NLHjGiQWRdlMeAO6o5uRolcq7pla5ol4KvuwpnCmpe/77O/6C+ZwRK6UYgmFWUByUXFvd7UutQemXa1gP/6eerSdw7w5CvWAtt3GupEY6Tz208Sc0E7pgcHjaikN2UQ8u3x9wTsAotibqsIKwpzKrY1Yud3dZnBL/cCr8E8uC7bmIsoqnI8vW7VWzUNWWDmuWNX3ILprd3EpZZRUQ4c6o4hW/1gVUxjtUnFdDgkZoWy/8xmfJFd9FwGsQ2yYDKZviRyaIFhGAtNDK2FOz1VhBA/zFxSsX40AcD7XACJAH3VZaCBQYczsU+aWrt4yxbI5V9/3k0Xuz3RZyVznxe49teE+CgcHecVEKU01hzpeAUv3g37lvmuHVGhM= rahul@rahul"
}
