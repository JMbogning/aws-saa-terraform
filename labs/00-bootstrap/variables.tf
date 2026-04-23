variable "aws_region" {
  description = "AWS region used by the lab."
  type        = string
  default     = "eu-west-3"
}

variable "project_name" {
  description = "Project name used in tags and outputs."
  type        = string
  default     = "aws-saa-terraform"
}

variable "environment" {
  description = "Environment name used for learning resources."
  type        = string
  default     = "learning"
}

variable "project_tags" {
  description = "Additional custom tags merged with the default tags."
  type        = map(string)
  default     = {}
}
