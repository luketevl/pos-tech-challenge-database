resource "aws_db_instance" "restaurante_rds" {
  identifier           = "restaurante"
  instance_class       = "db.t3.micro"
  allocated_storage    = 5
  engine               = "postgres"
  engine_version       = "15.3"
  username             = var.db_username
  password             = var.db_password
  db_subnet_group_name = aws_db_subnet_group.restaurante.name
  parameter_group_name = aws_db_parameter_group.restaurante.name
  publicly_accessible  = true
  skip_final_snapshot  = true
}

resource "aws_db_subnet_group" "restaurante" {
  name       = "dbsubnet"
  subnet_ids = [aws_subnet.private_subnet_a.id, aws_subnet.private_subnet_b.id]
  tags       = local.common_tags
}

resource "aws_db_parameter_group" "restaurante" {
  name   = "restaurante"
  family = "postgres15"

  parameter {
    name  = "log_connections"
    value = "1"
  }
}