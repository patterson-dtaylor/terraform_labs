terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      # This is were you set the version you want to use.
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region = var.AWS_REGION
}