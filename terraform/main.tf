
provider "aws" {
  region = "us-east-1"
}

# Use the default VPC (no custom VPC creation)
data "aws_vpc" "default" {
  default = true
}

# Create a simple ECR repository
resource "aws_ecr_repository" "webapp" {
  name = "webapp-repo"
}
