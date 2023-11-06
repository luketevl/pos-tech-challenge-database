variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "aws_profile" {
  type    = string
  default = "default"
}

variable "aws_account_id" {
  type    = string
  default = "792573163882"
}


variable "db_username" {
  description = "RDS root user name"
  type        = string
  sensitive   = true
}


variable "db_password" {
  description = "RDS root user password"
  type        = string
  sensitive   = true
}