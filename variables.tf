variable "DBPass" {
  description = "The password for the database"
  type        = string
}

variable "frontend_ecr_repo" {
  description = "Name of the Frontend ECR repository"
  type        = string
}

variable "backend_ecr_repo" {
  description = "Name of the Backend ECR repository"
  type        = string
}
