# resource "helm_release" "sock-shop" {
#   name             = "microservices-app-master-release"
#   chart            = "sock-shop"
#   create_namespace = true
#   namespace        = var.env
#
#   values = [
#     file(var.values_path)
#   ]
#
#   #  set {
#   #   name  = "cluster.enabled"
#   #    value = "true"
#   #  }
#   depends_on = [kubernetes_manifest.cluster_issuer]
# }