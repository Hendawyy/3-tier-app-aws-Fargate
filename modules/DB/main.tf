resource "aws_db_subnet_group" "dbsubnet" {
  name       = "db subnet"
  subnet_ids = var.private_subnets
}

resource "aws_db_instance" "mysql" {
  allocated_storage         = 20
  engine                    = "mysql"
  engine_version            = "5.7.44"
  instance_class            = "db.t3.micro"
  username                  = "admin"
  password                  = var.DBPass
  parameter_group_name      = "default.mysql5.7"
  multi_az                  = true
  vpc_security_group_ids    = [var.security_group_ids]
  db_subnet_group_name      = aws_db_subnet_group.dbsubnet.name
  skip_final_snapshot      = false
  final_snapshot_identifier = "final-snapshot-${formatdate("YYYYMMDD-HHmmss", timestamp())}"

  
}
