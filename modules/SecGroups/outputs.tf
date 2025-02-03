output "alb_sg_id" {
  value = aws_security_group.alb.id
}

output "fe_sg_id" {
  value = aws_security_group.fe.id
}

output "be_sg_id" {
  value = aws_security_group.be.id
}

output "db_sg_id" {
  value = aws_security_group.db.id
}
