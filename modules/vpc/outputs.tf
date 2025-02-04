output "vpc_id" {
  value = aws_vpc.my_vpc.id
}
output "public_subnets" {
  value = aws_subnet.public_subnet[*].id
}
output "private_subnets" {
  value = aws_subnet.private_subnet[*].id
}
output "vpc_cidr" {
  value = aws_vpc.my_vpc.cidr_block
}
output "availability_zones" {
  value = distinct([for subnet in aws_subnet.public_subnet : subnet.availability_zone])
}
