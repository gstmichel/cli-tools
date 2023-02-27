## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | >=0.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | 0.3.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_azdo-config"></a> [azdo-config](#module\_azdo-config) | ./modules/pipelines | n/a |

## Resources

| Name | Type |
|------|------|
| [azuredevops_branch_policy_merge_types.public](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/branch_policy_merge_types) | resource |
| [azuredevops_git_repository.cli-tools](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/git_repository) | resource |
| [azuredevops_project.public](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/project) | resource |
| [azuredevops_repository_policy_author_email_pattern.email_restriction](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/repository_policy_author_email_pattern) | resource |
| [azuredevops_resource_authorization.terraform-pipeline](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/resource_authorization) | resource |
| [azuredevops_variable_group.terraform](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/variable_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ARM_ACCESS_KEY"></a> [ARM\_ACCESS\_KEY](#input\_ARM\_ACCESS\_KEY) | BackEnd - Azure RM Access Key | `string` | n/a | yes |
| <a name="input_ARM_CONTAINER_NAME"></a> [ARM\_CONTAINER\_NAME](#input\_ARM\_CONTAINER\_NAME) | BackEnd - Azure RM Container Name | `string` | n/a | yes |
| <a name="input_ARM_KEY"></a> [ARM\_KEY](#input\_ARM\_KEY) | BackEnd - Azure RM Key | `string` | n/a | yes |
| <a name="input_ARM_STORAGE_ACCOUNT_NAME"></a> [ARM\_STORAGE\_ACCOUNT\_NAME](#input\_ARM\_STORAGE\_ACCOUNT\_NAME) | BackEnd - Azure RM Storage Account Name | `string` | n/a | yes |
| <a name="input_AZDO_ORG_SERVICE_URL"></a> [AZDO\_ORG\_SERVICE\_URL](#input\_AZDO\_ORG\_SERVICE\_URL) | Azure DevOps Service URL | `string` | n/a | yes |
| <a name="input_AZDO_PERSONAL_ACCESS_TOKEN"></a> [AZDO\_PERSONAL\_ACCESS\_TOKEN](#input\_AZDO\_PERSONAL\_ACCESS\_TOKEN) | Azure DevOps Access Token | `string` | n/a | yes |

## Outputs

No outputs.
