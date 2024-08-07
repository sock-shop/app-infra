# resource "helm_release" "sock-shop" {
#   name             = "sock-shop-release"
#   chart            = "sock-shop"
#   create_namespace = true
#   namespace        = var.env
#   wait             = true
#
#   values = [
#     file(var.values_yaml_path)
#   ]
#
#   depends_on = [
#     helm_release.external-nginx,
#     helm_release.cert-manager,
#     #     kubernetes_manifest.cluster_issuer
#   ]
# }