data "aws_ecr_repository" "service_catalogue" {
  name = "catalogue"
}

data "aws_ecr_repository" "service_front_end" {
  name = "front-end"
}


output "service_catalogue_tags" {
  value = data.aws_ecr_repository.service_catalogue.most_recent_image_tags
}

output "service_front_end_tags" {
  value = data.aws_ecr_repository.service_front_end.most_recent_image_tags
}

resource "helm_release" "sock-shop" {
  name             = "microservices-app-master-release"
  chart            = "sock-shop"
  create_namespace = true
  namespace        = var.env
  wait             = true
  force_update     = true

  values = [
    file(var.values_yaml_path)
  ]

#   set {
#     name  = "catalogue.image.repository"
#     value = data.aws_ecr_repository.service_catalogue.repository_url
#   }
#
#   set {
#     name  = "catalogue.image.tag"
#     value = data.aws_ecr_repository.service_catalogue.most_recent_image_tags[0]
#   }
#
#   set {
#     name  = "frontEnd.image.repository"
#     value = data.aws_ecr_repository.service_front_end.repository_url
#   }
#
#   set {
#     name  = "frontEnd.image.tag"
#     value = data.aws_ecr_repository.service_front_end.most_recent_image_tags[0]
#   }
}