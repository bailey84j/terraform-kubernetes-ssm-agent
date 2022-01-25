# terraform-kubernetes-ssm-agent

Terraform module which deploys AWS SSM

[![tflint](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/actions/workflows/tflint.yml/badge.svg)](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/actions/workflows/tflint.yml)
[![LICENSE](https://img.shields.io/github/license/bailey84j/terraform-kubernetes-ssm-agent)](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/blob/master/LICENSE)
[![Terraform](https://img.shields.io/badge/tf->%3D0.14.8-blue.svg)](https://www.terraform.io/downloads)


## Examples

| Example | Description | Status|
|---------|-------------|-------|
| [Standard](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/tree/master/examples/standard)| Deploying SSM Agent using the default settings|[![Standard-Deployment](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/actions/workflows/standard-deployment.yml/badge.svg)](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/actions/workflows/standard-deployment.yml) 
| [Custom](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/tree/master/examples/custom)| Customising the deployment to use a different name and namespace| [![Custom-Deployment](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/actions/workflows/custom-deployment.yml/badge.svg)](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/actions/workflows/custom-deployment.yml)


## Contributing

Report issues/questions/feature requests via [issues](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/issues/new)
Full contributing [guidelines are covered here](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/blob/master/.github/CONTRIBUTING.md)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14.8 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | >= 2.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_daemonset.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/daemonset) | resource |
| [kubernetes_namespace.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | Determines whether to create a new kubernetes namespace for the deployment | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the ssm daemonset | `string` | `"xray"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace to place the daemonset | `string` | `"kube-system"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
