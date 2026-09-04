terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # For a solo assignment, local state is fine.
  # In a real team you'd use an S3 backend + DynamoDB lock table instead.
  # backend "s3" {
  #   bucket = "your-tfstate-bucket"
  #   key    = "eks-observability/terraform.tfstate"
  #   region = "ap-south-1"
  # }
}

provider "aws" {
  region = var.aws_region
}

