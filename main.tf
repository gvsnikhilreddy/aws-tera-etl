terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-east-1"  # Adjust region as needed
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-s3-bucket"  # This should be globally unique
  acl    = "private"
}