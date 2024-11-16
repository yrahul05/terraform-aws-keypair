# Terraform-aws-keypair

# Terraform AWS Cloud Keypair Module

## Table of Contents
- [Introduction](#introduction)
- [Usage](#usage)
- [Examples](#Examples)
- [Author](#Author)
- [License](#license)
- [Inputs](#inputs)
- [Outputs](#outputs)

## Introduction
This Terraform module creates an AWS Keypair along with additional configuration options.
## Usage
To use this module, you should have Terraform installed and configured for AWS. This module provides the necessary Terraform configuration for creating AWS resources, and you can customize the inputs as needed. Below is an example of how to use this module:
## Examples

## Example: private_key

```hcl
module "private_keypair" {
  source                     = "yrahul05/keypair/aws"
  version                    = "1.0.0"
  name                       = "private-key"
  environment                = "test"
  label_order                = ["name", "environment"]
  create_private_key_enabled = true
  enable_key_pair            = true
}
```

## Example: s3 complete
```hcl
module "public_keypair" {
  source      = "yrahul05/keypair/aws"
  version     = "1.0.0"
  name        = "public-key"
  environment = "test"
  label_order = ["name", "environment"]
  public_key  = "ssh-rsa AB3NzaC1yc2EAAAADAQABAAABgQChJ2VNjqGjWiwOt0qX6PvXKkqNXF/XXPdOCrMB6KqeS63IeiQiwtc8w2S+Q91hnPXRRgpBkAC1xJpsrpouo9SHd9wacuBbafgNgHqBwALCZuYs3UESaT8r2/5Dr13r5xAcH3RNBS7NLHjGiQWRdlMeAO6o5uRolcq7pla5ol4KvuwpnCmpe/77O/6C+ZwRK6UYgmFWUByUXFvd7UutQemXa1gP/6eerSdw7w5CvWAtt3GupEY6Tz208Sc0E7pgcHjaikN2UQ8u3x9wTsAotibqsIKwpzKrY1Yud3dZnBL/cCr8E8uC7bmIsoqnI8vW7VWzUNWWDmuWNX3ILprd3EpZZRUQ4c6o4hW/1gVUxjtUnFdDgkZoWy/8xmfJFd9FwGsQ2yYDKZviRyaIFhGAtNDK2FOz1VhBA/zFxSsX40AcD7XACJAH3VZaCBQYczsU+aWrt4yxbI5V9/3k0Xuz3RZyVznxe49teE+CgcHecVEKU01hzpeAUv3g37lvmuHVGhM= rahul@rahul"

}
```

## Examples
For detailed examples on how to use this module, please refer to the [examples](https://github.com/yrahul05/terraform-aws-keypair/tree/master/_example) directory within this repository.

## Author
Your Name Replace **MIT** and **yrahul05** with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

## License
This project is licensed under the **MIT** License - see the [LICENSE](https://github.com/yrahul05/terraform-aws-keypair/blob/master/LICENSE) file for details.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.13.1 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.13.1 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 3.0.0 |

## Modules

| Name | Source                                                | Version |
|------|-------------------------------------------------------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | git::git@github.com:yrahul05/terraform-aws-labels.git | v1.0.0 |

## Resources

| Name | Type |
|------|------|
| [aws_key_pair.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [tls_private_key.default](https://registry.terraform.io/providers/hashicorp/tls/3.0.0/docs/resources/private_key) | resource |

## Inputs

| Name | Description                                                                                                      | Type | Default      | Required |
|------|------------------------------------------------------------------------------------------------------------------|------|--------------|:--------:|
| <a name="input_attributes"></a> [attributes](#input\_attributes) | Additional attributes (e.g. `1`).                                                                                | `list(string)` | `[]`         | no |
| <a name="input_create_private_key_enabled"></a> [create\_private\_key\_enabled](#input\_create\_private\_key\_enabled) | Determines whether a private key will be created                                                                 | `bool` | `false`      | no |
| <a name="input_enable_key_pair"></a> [enable\_key\_pair](#input\_enable\_key\_pair) | A boolean flag to enable/disable key pair.                                                                       | `bool` | `true`       | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (e.g. `prod`, `dev`, `staging`).                                                                     | `string` | `""`         | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | label order, e.g. `name`,`application`.                                                                          | `list(any)` | `[]`         | no |
| <a name="input_managedby"></a> [managedby](#input\_managedby) | ManagedBy, eg 'yrahul05'.                                                                                        | `string` | `"yrahul05"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name  (e.g. `app` or `cluster`).                                                                                 | `string` | `""`         | no |
| <a name="input_private_key_algorithm"></a> [private\_key\_algorithm](#input\_private\_key\_algorithm) | Name of the algorithm to use when generating the private key. Currently-supported values are `RSA` and `ED25519` | `string` | `"RSA"`      | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The key pair ARN. |
| <a name="output_id"></a> [id](#output\_id) | The key pair name. |
| <a name="output_name"></a> [name](#output\_name) | Name of SSH key. |
| <a name="output_private_key_id"></a> [private\_key\_id](#output\_private\_key\_id) | Unique identifier for this resource: hexadecimal representation of the SHA1 checksum of the resource |
| <a name="output_public_key_openssh"></a> [public\_key\_openssh](#output\_public\_key\_openssh) | The public key data in "Authorized Keys" format. This is populated only if the configured private key is supported: this includes all `RSA` and `ED25519` keys |
| <a name="output_public_key_pem"></a> [public\_key\_pem](#output\_public\_key\_pem) | Public key data in PEM (RFC 1421) format |
<!-- END_TF_DOCS -->