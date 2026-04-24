locals {
  common_tags = merge(
    {
      Project     = var.project_name
      Environment = var.environment
      ManagedBy   = "Terraform"
      Lab         = "02-vpc-basics"
      Service     = "VPC"
    },
    var.project_tags
  )
}