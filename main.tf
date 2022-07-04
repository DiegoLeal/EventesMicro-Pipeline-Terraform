terraform {
  required_version = "~>1.2.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.50.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }

  backend "s3" {
    bucket = "engenharia-de-software-remote-state"
    key    = "aws-events/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region  = var.aws_region  
}
