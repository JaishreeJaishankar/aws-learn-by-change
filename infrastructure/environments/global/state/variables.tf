variable "namespace" {
  type        = string
  description = "Project name"
  default     = "web-app"
}

variable "name" {
  type        = string
  description = "What is this web app???"
  default     = "todo-app"
}

variable "environments" {
  description = "Environments"
  type        = list(string)
  default     = ["dev", "prod"]
}
