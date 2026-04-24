variable "aws_region" {
  description = "AWS region used by the lab."
  type        = string
  default     = "eu-west-3"
}

variable "aws_account_id" {
  description = "AWS account ID used only to help build a globally unique bucket name."
  type        = string
  default     = "123456789012"

  validation {
    condition     = can(regex("^[0-9]{12}$", var.aws_account_id))
    error_message = "aws_account_id must contain exactly 12 digits."
  }
}

variable "bucket_name_prefix" {
  description = "Short lowercase prefix used to build a globally unique S3 bucket name."
  type        = string
  default     = "aws-saa-tf-s3"
}

variable "environment" {
  description = "Environment name used for tagging."
  type        = string
  default     = "learning"
}

variable "force_destroy" {
  description = "Allow Terraform to delete the bucket even if it contains objects."
  type        = bool
  default     = false
}

variable "project_tags" {
  description = "Additional custom tags merged with the default tags."
  type        = map(string)
  default     = {}
}