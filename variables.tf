# All variables with prefix existing came from AWS console
variable "existing_eks_cluster_name" {
  type        = string
  description = "the name of the existing eks cluster"
  default     = "sock-shop-mai24-eks"
}

variable "existing_eks_cluster_endpoint" {
  type        = string
  description = "todo"
  default     = "https://45A98C5BAE48B99275FA3D8860BB6BA4.gr7.eu-west-3.eks.amazonaws.com"
}
variable "existing_eks_cluster_certificate_authority" {
  type        = string
  description = "todo"
  default     = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJWTQ4K1kwK2xSN2t3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TkRBM01Ua3hNVE01TlRkYUZ3MHpOREEzTVRjeE1UUTBOVGRhTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURKc3VYakF5eGZCeW93QzV6YzdJMGVQZmE4SE4vc2ptdFNxYmw2dk9xc2lKZ2NCUTBZbytpMTA5L3UKL0UvdXpKZThvTWpNc2dyeDZPampOemRsR1ZUQm5IclJBUzNhQzdXbCtaQWtlNHZjNytHVnR4REQ1NzJxMi9oYgozVWtLaWF6Y3ROam45eWlPb2V4MGp2L0c1RGlBeldNUmxPK005MWxMVUx5M0JWSjdzVWtsbXplRmZSMTIrTm5yClQwaTJtOWxieC9NSnBZdXBnUjN2Q3FBMEZBQURQSXZuamJ1NHlnYjArKzRUQ05PZEg4UTEvdHpGNXJUK2hKRysKM2txZ2VkdUVuMnYwcTNkWFczY0x1cWJYb3M2MURIWDJXTkxZWjc1OXRBVjFyQ1A2eEhXemNvNVVXVTI5WDMzUgpPMGtleVpYNnZaK0svL2lFMW1KTDhSN1ZscjhWQWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJTWE05cW96Wmg1ajhyWnp0aEthL2FyRWdsS2x6QVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQ1ZKaytRQWpXZApqZHdrMjVBN0taV2FXdmVkUEVmU1NiTzV3dm1DT1dia3NaZi90SjU3T0U4ejM1Wk1sVFBGdWhXaWlJVTAyV2JYClQvUGpscm1raTBLNFBVeDIyQ0pEZmRleHVydytOeHBIL05PWFQxRitJbEpGNzdzdDNBWlc1UE9QSTRrM2paRncKTHNXVmtYYnp6bnl2MnZVNUFYM1NhVDd6ZjJiOVVzeU5CbFFDNUJJNUo1WEx1S0gvZ3BEQ25xeHZwcDVtc1JCaQpVWm9xNmRmWGcwVmFIYUNVekNGcFgyL1kvWkMrdzJMT0dOVUJYa0ZSaTVWUkRsRkFoRmtsbWJJOXBWNVYxNldtCjRxWUYvdG5VQnFJZVhWNHJUWUZvUUlpYnlLNHJEU1dsZ1V1NGxGMnRJYmdFVnJaWnNyczl0bE1GR2kzMnpCWGEKNytqczVXWWFnNjdwCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
}

variable "values_path" {
  type        = string
  description = "the path of the values.yaml file to use to deploy the helm-charts"
  default     = "sock-shop/values-stage.yaml"
}

variable "env" {
  type        = string
  description = "the namespace to use to deploy the helm-charts"
  default     = "stage"
}

variable "user_email" {
  type        = string
  description = "todo"
  default     = "alex.nguepi@web.de"
}