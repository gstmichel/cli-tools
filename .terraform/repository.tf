resource "azuredevops_git_repository" "cli-tools" {
  project_id     = azuredevops_project.public.id
  name           = "cli-tools"
  default_branch = "refs/heads/main"

  initialization {
    init_type = "Clean"
  }

  lifecycle {
    ignore_changes = [
      initialization,
    ]
  }
}
