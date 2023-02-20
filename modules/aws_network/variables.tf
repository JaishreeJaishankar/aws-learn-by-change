variable "default_tags" {
  type        = map(any)
  description = "Default tags to be applied to all AWS resources"
}

variable "purpose" {
  default     = "Learn"
  type        = string
  description = "Purpose of the project - to be used as prefix"
}

variable "env" {
  type        = string
  description = "Deployment environment"
}

variable "region" {
  default     = "us-east-1"
  type        = string
  description = "AWS region in which our architecture is being deployed"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR range of VPC for the dev environment"
}

# Public subnets in VPC
variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDRs"
}

# Private subnets in VPC
variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private Subnet CIDRs"
}