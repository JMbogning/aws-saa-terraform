output "account_id" {
  description = "AWS account ID used by the current credentials."
  value       = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  description = "ARN of the current AWS identity."
  value       = data.aws_caller_identity.current.arn
}

output "current_region" {
  description = "Resolved AWS region."
  value       = data.aws_region.current.region
}

output "aws_partition" {
  description = "AWS partition for the current account."
  value       = data.aws_partition.current.partition
}

output "default_tags" {
  description = "Tags applied by default through the provider configuration."
  value       = local.common_tags
}