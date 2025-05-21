variable "vpc_id" {
  description = "The ID Of The VPC"
}
variable "public_subnets" {
  description = "List of public subnet IDs"
}
variable "private_subnets" {
  description = "List of private subnet IDs"
}
variable "security_group_ids" {
  description = "List of security group IDs"
}
variable "alb_Sec_group" {
  description = "The Security Group Of The Load Balancer"
}
variable "fe_image" {
  description = "The FrontEnd Container Image"
}
variable "be_alb_dns_name" {
  description = "Backend DNS LB"
}
