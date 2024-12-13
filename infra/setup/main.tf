terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket         = "gna-devops-app-tf-state"
    key            = "tf-state-setup"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "gna-devops-app-tf-lock"
  }

}

provider "aws" {
  # Configuration options
  region  = "us-east-2"
  profile = "default"
  default_tags {
    tags = {
      Environment = terraform.workspace
      Owner       = "GNA"
      Project     = var.project
      contact     = var.contact
      ManagedBy   = "Terraform/setup"
    }
  }
}
