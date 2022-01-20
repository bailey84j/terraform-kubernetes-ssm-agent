# terraform-kubernetes-ssm-agent

Terraform module which deploys AWS SSM

[![Lint Status](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/actions/workflows/main.yml/badge.svg)](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/actions/workflows/main.yml)
[![LICENSE](https://img.shields.io/github/license/bailey84j/terraform-kubernetes-ssm-agent)](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/blob/master/LICENSE)


## Examples

- [Standard](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/tree/master/examples/standard): Deploying AWS Load Balancer Controller using the default settings
- [Custom](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/tree/master/examples/custom): Customising the deployment to use a different name and namespace 

## Contributing

Report issues/questions/feature requests via [issues](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/issues/new)
Full contributing [guidelines are covered here](https://github.com/bailey84j/terraform-kubernetes-ssm-agent/blob/master/.github/CONTRIBUTING.md)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the xray daemonset | `string` | `"xray"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace to place the xray daemonset | `string` | `"kube-system"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
