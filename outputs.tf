# outputs.tf

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = module.vpc.public_subnets
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = module.vpc.private_subnets
}
