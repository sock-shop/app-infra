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
  manifest = yamlencode({
    apiVersion = "cert-manager.io/v1"
    kind       = "ClusterIssuer"
    metadata = {
      name = "http-01-${var.env}"
    }
    spec = {
      acme = {
        email = "alex@jmetio.de"
        server = "https://acme-v02.api.letsencrypt.org/directory"
        privateKeySecretRef = {
          name = "http-01-${var.env}-cluster-issuer"
        }
        solvers = [
          {
            http01 = {
              ingress = {
                ingressClassName = "external-nginx"
              }
            }
          }
        ]
      }
    }
  })

  depends_on = [helm_release.cert-manager]
}
