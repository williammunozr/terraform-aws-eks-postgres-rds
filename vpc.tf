/* 
  VPC Configuration
  Develop By: William MR
*/

module "vpc" {
  source                    = "terraform-aws-modules/vpc/aws"
  version                   = "~> v2.48.0"

  name                      = var.vpc_name
  cidr                      = "${lookup(var.cidr_ab, var.environment)}.0.0/16"
  
  # Working with local variables
  private_subnets           = local.private_subnets
  public_subnets            = local.public_subnets

  # Could be
  azs = local.availability_zones

  enable_nat_gateway        = false
  single_nat_gateway        = false
  one_nat_gateway_per_az    = false
  enable_vpn_gateway        = false

  enable_dns_hostnames      = true
  enable_dns_support        = true

  tags = {
    Terraform               = var.is_project_terraformed
    Environment             = var.environment
    Owner                   = var.project_owner
    Email                   = var.project_email
    Project_Name            = var.project_name
    "kubernetes.io/cluster/${var.eks_cluster_name}" = "shared"
    "kubernetes.io/role/elb" = "1"
  }
}