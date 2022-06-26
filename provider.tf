provider "aws" {
  secret_key = var.aws_secret_access_key
  access_key = var.aws_access_key_id 
  region  = var.aws_region
}


data "aws_region" "current" {}
