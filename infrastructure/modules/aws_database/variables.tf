variable "stage" {
  type        = string
  description = "Deployment stage, e.g. dev, test, prod"
  default     = "dev"
}

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

variable "private_subnet_ids" {
  type        = list(string)
  description = "List of private subnet IDs"
  default     = []
}

variable "vpc_id" {
  type        = string
  description = "VPC Id"
}

variable "ecs_sg_id" {
  type        = string
  description = "Security Group of ECS service"
}
