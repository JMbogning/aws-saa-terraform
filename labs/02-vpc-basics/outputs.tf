output "vpc_id" {
  description = "ID of the VPC created by the lab."
  value       = aws_vpc.lab.id
}

output "vpc_cidr" {
  description = "CIDR block used by the VPC."
  value       = aws_vpc.lab.cidr_block
}

output "internet_gateway_id" {
  description = "ID of the Internet Gateway attached to the VPC."
  value       = aws_internet_gateway.lab.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets."
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets."
  value       = aws_subnet.private[*].id
}

output "availability_zones_used" {
  description = "Availability Zones selected for the lab."
  value       = slice(data.aws_availability_zones.available.names, 0, length(var.public_subnet_cidrs))
}