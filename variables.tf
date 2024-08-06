variable "existing_eks_cluster_name" {
  type        = string
  description = "the name of the existing eks cluster"
  default     = "sock-shop-mai24-eks"
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

variable "values_yaml_path" {
  type        = string
  description = "the path of the values.yaml file to use to deploy the helm-charts"
  default     = "sock-shop/values-stage.yaml"
}