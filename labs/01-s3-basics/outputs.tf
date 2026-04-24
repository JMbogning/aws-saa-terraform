output "bucket_name" {
  description = "Name of the S3 bucket created by the lab."
  value       = aws_s3_bucket.lab.bucket
}

output "bucket_arn" {
  description = "ARN of the S3 bucket created by the lab."
  value       = aws_s3_bucket.lab.arn
}

output "bucket_domain_name" {
  description = "Bucket domain name exposed by AWS."
  value       = aws_s3_bucket.lab.bucket_domain_name
}