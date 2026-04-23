locals {
  common_tags = merge(
    {
      Project     = var.project_name
      Environment = var.environment
      ManagedBy   = "Terraform"
      Lab         = "00-bootstrap"
    },
    var.project_tags
  )
}
