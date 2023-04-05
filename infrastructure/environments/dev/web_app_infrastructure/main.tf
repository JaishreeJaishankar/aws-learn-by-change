# ECS Service
module "ecs_service" {

  source = "../../../modules/aws_ecs_service"

  name                  = var.name
  namespace             = var.namespace
  stage                 = var.stage
  container_port        = var.container_port
  td_arn                = module.td.td_arn
  service_desired_count = var.service_desired_count
}

# ECS Task Definition

module "td" {

  source = "../../../modules/aws_taskdefinition"

  name           = var.name
  namespace      = var.namespace
  stage          = var.stage
  container_port = var.container_port
}
