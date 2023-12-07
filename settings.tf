terraform {
#   cloud {
#     organization = "Infrasity"

#     workspaces {
#       name = "infrasity-workspace"
#     }
#   }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.29.0"
    }
  }
}
provider "aws" {
    region = "us-east-1" 
}