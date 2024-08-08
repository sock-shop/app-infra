resource "helm_release" "external-nginx" {
  name             = "external"
  repository       = "https://kubernetes.github.io/ingress-nginx"
  chart            = "ingress-nginx"
  namespace        = "ingress"
  create_namespace = true
  version          = "4.10.1"
  wait             = true

  values = [file("nginx-ingress.yaml")]
}