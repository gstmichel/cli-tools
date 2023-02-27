
resource "azuredevops_variable_group" "terraform" {
  project_id = azuredevops_project.public.id
  name       = "terraform"

  variable {
    name         = "ARM_STORAGE_ACCOUNT_NAME"
    is_secret    = true
    secret_value = var.ARM_STORAGE_ACCOUNT_NAME
  }

  variable {
    name         = "ARM_CONTAINER_NAME"
    is_secret    = true
    secret_value = var.ARM_CONTAINER_NAME
  }

  variable {
    name         = "ARM_KEY"
    is_secret    = true
    secret_value = var.ARM_KEY
  }

  variable {
    name         = "ARM_ACCESS_KEY"
    is_secret    = true
    secret_value = var.ARM_ACCESS_KEY
  }
}

resource "azuredevops_resource_authorization" "terraform-pipeline" {
  project_id    = azuredevops_project.public.id
  resource_id   = azuredevops_variable_group.terraform.id
  definition_id = module.azdo-config.definition_id
  type          = "variablegroup"
  authorized    = true
}
