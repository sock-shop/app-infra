resource "helm_release" "cert-manager" {
  name = "cert-manager"

  repository       = "https://charts.jetstack.io"
  chart            = "cert-manager"
  namespace        = "cert-manager"
  create_namespace = true
  version          = "v1.14.5"

  set {
    name  = "installCRDs"
    value = "true"
  }

  depends_on = [helm_release.external-nginx]
}

resource "kubernetes_manifest" "cluster_issuer" {
  manifest = yamldecode(templatefile("${path.module}/cluster_issuer.tpl", {
    env                   = var.env,
    email                 = "alex@jmetio.de",
    private_key_secret    = "http-01-${var.env}-cluster-issuer",
    ingress_class_name    = "external-nginx"
  }))
  depends_on = [helm_release.cert-manager]
}
