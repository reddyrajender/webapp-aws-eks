provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  name    = "eks-vpc"
  cidr    = "10.0.0.0/16"
  azs     = ["us-east-1a", "us-east-1b"]
  ...
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "webapp-cluster"
  subnets         = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id
  ...
}

resource "aws_ecr_repository" "webapp" {
  name = "webapp-repo"
}



