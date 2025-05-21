output "fe_alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = aws_lb.frontend.dns_name
}
output "fe_alb_arn" {
  description = "The ARN of the ALB"
  value       = aws_lb.frontend.arn
}

output "fe_aws_lb_target_group_arn" {
  description = "The ARN of the FrontEnd Application Load Balancer target group"
  value       = aws_lb_target_group.frontend.arn
}
