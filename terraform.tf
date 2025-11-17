terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.5.0"
    }
  }
  cloud {
    organization = "Carlos-Engels"
    workspaces {
      name = "terraform-developement"
    }
  }

  required_version = ">= 1.2"
}