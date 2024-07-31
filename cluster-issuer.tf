resource "kubernetes_manifest" "cluster_issuer" {
  manifest = {
    "apiVersion" = "cert-manager.io/v1"
    "kind"       = "ClusterIssuer"
    "metadata" = {
      "name" = "http-01-${var.env}"
    }

    spec = {
      acme = {
        email  = var.user_email
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
  }
}