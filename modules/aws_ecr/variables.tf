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

variable "vpc_id" {
  type        = string
  description = "VPC Id"
}

variable "alb_sg_id" { 
  type        = string
  description = "ALB security group"
}