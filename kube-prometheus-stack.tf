variable "monitoring_namespace" {
  type    = string
  default = "monitoring"
}

// kube-prometheus-stack
resource "helm_release" "kube_prometheus" {
  name       = "kube-prometheus-stackr"
  namespace  = var.monitoring_namespace
  version    = "48.4.0"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
  create_namespace = true
}
