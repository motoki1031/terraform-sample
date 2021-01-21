terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket                  = "m-yamaguchi-test"
    key                     = "path/terraform.tfstate"
    region                  = "ap-northeast-1"
    shared_credentials_file = "$HOME/.aws/credentials"
  }
}

# Configure the AWS Provider
provider "aws" {
  region                  = "ap-northeast-1"
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = "tech-lab"
}
