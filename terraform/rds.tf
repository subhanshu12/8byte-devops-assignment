resource "aws_db_subnet_group" "postgres_subnet" {
  name = "postgres-subnet-group"

  subnet_ids = module.vpc.private_subnets
}

resource "aws_db_instance" "postgres" {
  identifier = "assignment-postgres"

  allocated_storage = 20

  engine         = "postgres"
  engine_version = "14"

  instance_class = "db.t3.micro"

  db_name  = var.db_name
  username = var.db_username
  password = var.db_password

  publicly_accessible = false

  skip_final_snapshot = true

  vpc_security_group_ids = [
    aws_security_group.rds_sg.id
  ]

  db_subnet_group_name = aws_db_subnet_group.postgres_subnet.name

  backup_retention_period = 7

  multi_az = false
}