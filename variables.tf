variable "name" {
  description = "The name of the xray daemonset"
  type        = string
  default     = "xray"

}

variable "namespace" {
  description = "The namespace to place the xray daemonset"
  type        = string
  default     = "kube-system"

}
