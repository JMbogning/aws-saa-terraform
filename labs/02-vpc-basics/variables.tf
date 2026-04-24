variable "aws_region" {
  description = "AWS region used by the lab."
  type        = string
  default     = "eu-west-3"
}

variable "project_name" {
  description = "Project name used in tags and naming."
  type        = string
  default     = "aws-saa-terraform"
}

variable "environment" {
  description = "Environment name used for tagging."
  type        = string
  default     = "learning"
}

variable "vpc_cidr" {
  description = "CIDR block used by the VPC."
  type        = string
  default     = "10.20.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks used by the public subnets."
  type        = list(string)
  default     = ["10.20.1.0/24", "10.20.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks used by the private subnets."
  type        = list(string)
  default     = ["10.20.11.0/24", "10.20.12.0/24"]
}

variable "project_tags" {
  description = "Additional custom tags merged with the default tags."
  type        = map(string)
  default     = {}
}