output "be_alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = aws_lb.backend.dns_name
}
output "be_alb_arn" {
  description = "The ARN of the ALB"
  value       = aws_lb.backend.arn
}

output "be_aws_lb_target_group_arn" {
  description = "The ARN of the BackEnd Application Load Balancer target group"
  value       = aws_lb_target_group.backend.arn
}
