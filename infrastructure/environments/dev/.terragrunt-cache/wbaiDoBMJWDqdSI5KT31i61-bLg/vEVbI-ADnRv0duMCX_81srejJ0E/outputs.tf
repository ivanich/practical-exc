output "ecr_repository_url" {
  value = aws_ecr_repository.app.repository_url
}

output "service_name" {
  value = aws_ecs_service.app.name
}

output "load_balancer_dns_name" {
  value = aws_lb.this.dns_name
}
