terraform {
  backend "s3" {
    bucket = "kdevops-terraform"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
  }
}

resource "null_resource" "test" {}
