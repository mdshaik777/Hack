output "vpc_id" {
  value       = aws_vpc.main.id
}

output "public_subnets" {
  value       = aws_subnet.public[*].id
}

output "private_subnets" {
  value       = aws_subnet.private[*].id
}

output "alb_security_group_id" {
  value       = aws_security_group.alb.id
}

output "ecs_security_group_id" {
  value       = aws_security_group.ecs_tasks.id
}

output "internet_gateway_id" {
  value       = aws_internet_gateway.main.id
}

output "nat_gateway_ids" {
  value       = aws_nat_gateway.main[*].id
}

output "vpc_cidr_block" {
  value       = aws_vpc.main.cidr_block
}