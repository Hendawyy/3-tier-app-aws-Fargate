variable "vpc_id" {
  description = "The ID Of The VPC"
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
variable "be_image" {
  description = "The BackEnd Container Image"
}
