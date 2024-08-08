resource "helm_release" "cert-manager" {
  name             = "cert-manager"
  repository       = "https://charts.jetstack.io"
  chart            = "cert-manager"
  namespace        = "cert-manager"
  create_namespace = true
  version          = "v1.14.5"
  wait             = true

  set {
    name  = "installCRDs"
    value = "true"
  }

  depends_on = [helm_release.external-nginx]
}