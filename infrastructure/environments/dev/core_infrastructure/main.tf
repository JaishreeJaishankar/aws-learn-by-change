# VPC
module "vpc" {

  source = "../../../modules/aws_network"

  name                    = var.name
  namespace               = var.namespace
  stage                   = var.stage
  ipv4_primary_cidr_block = "10.0.0.0/16"
}

# VPC Endpoints
module "vpce" {

  source = "../../../modules/aws_endpoints"

  name                    = var.name
  namespace               = var.namespace
  stage                   = var.stage
  private_subnet_ids      = module.vpc.private_subnet_ids
  private_route_table_ids = module.vpc.private_route_table_ids
  vpc_id                  = module.vpc.vpc_id
  ecs_sg_id               = module.ecs.ecs_sg_id
}

# RDS MySQL DB
module "db" {

  source = "../../../modules/aws_database"

  name               = var.name
  namespace          = var.namespace
  stage              = var.stage
  private_subnet_ids = module.vpc.private_subnet_ids
  vpc_id             = module.vpc.vpc_id
  ecs_sg_id          = module.ecs.ecs_sg_id
}

# ALB to front ECS service
module "certificate" {

  source = "../../../modules/aws_acm"

  name        = var.name
  namespace   = var.namespace
  stage       = var.stage
  domain_name = var.domain_name
}


# ALB to front ECS service
module "alb" {

  source = "../../../modules/aws_alb"

  name              = var.name
  namespace         = var.namespace
  stage             = var.stage
  public_subnet_ids = module.vpc.public_subnet_ids
  certificate_arn   = module.certificate.certificate_arn
  domain_name       = var.domain_name
  vpc_id            = module.vpc.vpc_id
}

# ECS service
module "ecs" {

  source = "../../../modules/aws_ecs"

  name      = var.name
  namespace = var.namespace
  stage     = var.stage
  alb_sg_id = module.alb.alb_sg_id
  vpc_id    = module.vpc.vpc_id
}

# ECR 
module "ecr" {

  source = "../../../modules/aws_ecr"

  name      = var.name
  namespace = var.namespace
  stage     = var.stage
  vpc_id    = module.vpc.vpc_id
  alb_sg_id = module.alb.alb_sg_id
}
