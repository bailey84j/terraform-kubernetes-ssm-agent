variable "name" {
  description = "The name of the ssm daemonset"
  type        = string
  default     = "xray"

}

variable "create_namespace" {
  description = "Determines whether to create a new kubernetes namespace for the deployment"
  type        = bool
  default     = false
}

variable "namespace" {
  description = "The namespace to place the daemonset"
  type        = string
  default     = "kube-system"

}
