# main.tf

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.13.0"

  name                 = "my-vpc"
  cidr                 = var.vpc_cidr
  azs                  = ["us-east-2a", "us-east-2b"] # Availability Zones
  public_subnets       = var.public_subnet_cidrs
  private_subnets      = var.private_subnet_cidrs

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
