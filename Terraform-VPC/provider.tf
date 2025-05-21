terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.96.0"
    }
  }

  backend "s3" {
    bucket = "js-my-tf-website-state"
    key    = "dev/terraform.tfstate"
    region = "eu-west-2"
  }
}

provider "aws" {
  region = "eu-west-2"
}