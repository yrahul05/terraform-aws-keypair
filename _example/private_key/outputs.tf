output "name" {
  value       = module.private_keypair.name
  description = "Name of SSH key."
}

output "id" {
  value       = module.private_keypair[*].arn
  description = "The key pair name."
}

output "arn" {
  value       = module.private_keypair[*].id
  description = "The key pair ARN."
}

output "private_key_id" {
  value       = module.private_keypair[*].private_key_id
  description = "Unique identifier for this resource: hexadecimal representation of the SHA1 checksum of the resource"
}



