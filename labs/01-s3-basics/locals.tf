locals {
  bucket_name = lower("${var.bucket_name_prefix}-${var.aws_account_id}-${var.aws_region}")

  common_tags = merge(
    {
      Environment = var.environment
      ManagedBy   = "Terraform"
      Lab         = "01-s3-basics"
      Service     = "S3"
    },
    var.project_tags
  )
}