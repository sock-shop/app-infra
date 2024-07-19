terraform {
  backend "s3" {
    bucket  = "aws-sock-shop-mai24-infra-state.file"
    key     = "terraform.tfstate"
    region  = "eu-west-3"
    encrypt = true
  }
}