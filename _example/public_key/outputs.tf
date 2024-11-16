output "name" {
  value       = module.public_keypair[*].name
  description = "Name of SSH key."
}

output "id" {
  value       = module.public_keypair[*].arn
  description = "The key pair name."
}

output "arn" {
  value       = module.public_keypair[*].id
  description = "The key pair ARN."
}

output "public_key_openssh" {
  value       = module.public_keypair[*].public_key_openssh
  description = "The public key data in \"Authorized Keys\" format. This is populated only if the configured private key is supported: this includes all `RSA` and `ED25519` keys"
}

output "public_key_pem" {
  value       = module.public_keypair[*].public_key_pem
  description = "Public key data in PEM (RFC 1421) format"
}