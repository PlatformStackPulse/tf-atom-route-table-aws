output "enabled" {
  description = "Whether the module is enabled"
  value       = local.enabled
}

output "id" {
  description = "ID of the route table"
  value       = try(aws_route_table.this[0].id, null)
}

output "arn" {
  description = "ARN of the route table"
  value       = try(aws_route_table.this[0].arn, null)
}
