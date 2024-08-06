terraform {
  required_version = ">= 1.3.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.61.0"
    }
  }
}

provider "aws" {
  region = "eu-west-3"
  # for local dev
  #   shared_credentials_files = ["~/.aws/credentials"]
  #   profile                  = "student16_mai24_bootcamp_devops_sock-shop"
}


data "aws_eks_cluster" "cluster" {
  name = var.existing_eks_cluster_name
}

data "aws_eks_cluster_auth" "cluster_auth" {
  name = var.existing_eks_cluster_name
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.cluster_auth.token
}

provider "helm" {
  kubernetes {
    host                   = data.aws_eks_cluster.cluster.endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
    token                  = data.aws_eks_cluster_auth.cluster_auth.token
  }
}
