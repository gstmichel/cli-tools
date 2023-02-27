module "azdo-config" {
  source          = "./modules/pipelines"
  project_id      = azuredevops_project.public.id
  repository_id   = azuredevops_git_repository.cli-tools.id
  build_name      = "azdo-config"
  yml_path        = "\\.terraform\\.azdo\\azdo-as-code.azure-pipelines.yml"
  pr_trigger_path = ["/.terraform/*", "!*.md", "!.gitignore"]
}
