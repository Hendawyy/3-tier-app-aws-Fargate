resource "aws_security_group" "alb" {
  name        = "application-loadbalancer-sg"
  description = "Security group for loadbalancer services"
  vpc_id      = var.vpc_id

  ingress {
    description = "HTTP from Anywhere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ALB"
  }
}

resource "aws_security_group" "fe" {

  name        = "application-frontend-sg"
  description = "Security group for frontend services"
  vpc_id      = var.vpc_id

  ingress {
    description     = "HTTP from ALB"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.alb.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "FrontEnd"
  }
}

resource "aws_security_group" "be" {

  name        = "application-backend-sg"
  description = "Security group for backend services"
  vpc_id      = var.vpc_id

  ingress {
    description     = "requests from FrontEnd"
    from_port       = 3000
    to_port         = 3000
    protocol        = "tcp"
    security_groups = [aws_security_group.fe.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Back End"
  }
}

resource "aws_security_group" "db" {

  name        = "application-db-sg"
  description = "Security group for database services"
  vpc_id      = var.vpc_id

  ingress {
    description     = "requests from Back End"
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [aws_security_group.be.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Database"
  }
}
