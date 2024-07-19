resource "helm_release" "microservices-app-master" {
  name             = "microservices-app-master-release"
  chart            = "helm-charts"
  create_namespace = true
  namespace        = var.deployment_namespace

  values = [
    file(var.values_path)
  ]

  #  set {
  #   name  = "cluster.enabled"
  #    value = "true"
  #  }

}