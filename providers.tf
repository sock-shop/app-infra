terraform {
  required_version = ">= 1.3.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.57"
    }
  }
}

provider "aws" {
  region                   = "eu-west-3"
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "student16_mai24_bootcamp_devops_sock-shop"
}


data "aws_eks_cluster_auth" "cluster_auth" {
  name = var.existing_eks_cluster_name
}

provider "kubernetes" {
  host                   = var.existing_eks_cluster_endpoint
  cluster_ca_certificate = base64decode(var.existing_eks_cluster_certificate_authority)
  token                  = data.aws_eks_cluster_auth.cluster_auth.token
}

provider "helm" {
  kubernetes {
    host                   = var.existing_eks_cluster_endpoint
    cluster_ca_certificate = base64decode(var.existing_eks_cluster_certificate_authority)
    token                  = data.aws_eks_cluster_auth.cluster_auth.token
  }
}
