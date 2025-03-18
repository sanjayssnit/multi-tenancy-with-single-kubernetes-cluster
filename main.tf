provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source = "./modules/vpc"
  
  vpc_cidr    = "10.0.0.0/16"
  region      = "us-west-2"
  environment = "poc"
}

module "eks" {
  source = "./modules/eks"
  
  cluster_name        = "multi-tenant-poc"
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
}