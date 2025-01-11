provider "aws" {
  region = "eu-west-2" # London region
}

resource "aws_s3_bucket" "terraform-nov-project25" {
  bucket = "terraform-nov-project25"
}

terraform {
    backend "s3" {
      bucket = "terraform-nov-project25"
      region = "eu-west-2"
      key = "global/s3/terraform.tfstate"
    }
  }