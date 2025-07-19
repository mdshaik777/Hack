output "dashboard_name" {
  value       = aws_cloudwatch_dashboard.main.dashboard_name
}

output "dashboard_url" {
  value       = "https://console.aws.amazon.com/cloudwatch/home?region=${data.aws_region.current.name}#dashboards:name=${aws_cloudwatch_dashboard.main.dashboard_name}"
}

output "high_cpu_alarm_name" {
  value       = aws_cloudwatch_metric_alarm.high_cpu.alarm_name
}

output "high_cpu_alarm_arn" {
  value       = aws_cloudwatch_metric_alarm.high_cpu.arn
}

output "log_group_names" {
  value = [
    "/ecs/${var.project_name}-${var.environment}/patient-service",
    "/ecs/${var.project_name}-${var.environment}/appointment-service"
  ]
}