apiVersion: cert-manager.io/v1
kind: ClusterIssuer
metadata:
  name: http-01-${env}
spec:
  acme:
    email: ${email}
    server: https://acme-v02.api.letsencrypt.org/directory
    privateKeySecretRef:
      name: ${private_key_secret}
    solvers:
      - http01:
          ingress:
            ingressClassName: ${ingress_class_name}