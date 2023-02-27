variable "project_id" {
  type        = string
  description = "(Required) The project ID or project name."

}

variable "build_name" {
  type        = string
  description = "(Required) The name of the build definition."
}

variable "build_path" {
  type        = string
  description = "(Optional) The folder path of the build definition."
  default     = "\\"
}

variable "repository_id" {
  type        = string
  description = "The id of the repository."
}

variable "yml_path" {
  type        = string
  description = "(Required) The path of the Yaml file describing the build definition."
}

variable "pr_trigger_path" {
  type        = set(string)
  description = "(Optional) The path list to trigger PR Build Validation"
  default     = []
}
