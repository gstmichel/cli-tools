resource "azuredevops_project" "public" {
  name        = "Public"
  description = "Publicly accessible code"

  visibility         = "public"
  work_item_template = "Basic"
}

resource "azuredevops_branch_policy_merge_types" "public" {
  project_id = azuredevops_project.public.id

  enabled  = true
  blocking = true

  settings {
    allow_squash                  = true
    allow_rebase_and_fast_forward = false
    allow_basic_no_fast_forward   = false
    allow_rebase_with_merge       = false

    scope {
      match_type = "DefaultBranch"
    }
  }
}

resource "azuredevops_repository_policy_author_email_pattern" "email_restriction" {
  project_id            = azuredevops_project.public.id
  enabled               = true
  blocking              = true
  author_email_patterns = ["guillaume.stmichel@gmail.com"]
}
