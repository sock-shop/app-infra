resource "helm_release" "sock-shop" {
  name             = "sock-shop-release"
  chart            = "sock-shop"
  create_namespace = true
  namespace        = var.env
  wait             = true

  values = [
    file(var.values_yaml_path)
  ]
}