resource "azuredevops_build_definition" "pipeline" {
  project_id      = var.project_id
  name            = var.build_name
  path            = var.build_path
  agent_pool_name = "Default"

  ci_trigger {
    use_yaml = true
  }

  repository {
    branch_name = "refs/heads/main"
    repo_type   = "TfsGit"
    repo_id     = var.repository_id
    yml_path    = var.yml_path
  }
}

resource "azuredevops_branch_policy_build_validation" "pr-build-validation" {
  project_id = var.project_id
  enabled    = true
  blocking   = true

  settings {
    display_name        = "Plan Validation"
    build_definition_id = azuredevops_build_definition.pipeline.id
    valid_duration      = 0
    filename_patterns   = var.pr_trigger_path

    scope {
      repository_id  = var.repository_id
      repository_ref = "refs/heads/main"
      match_type     = "Exact"
    }
  }
}
