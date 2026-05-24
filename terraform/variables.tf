variable "aws_region" {
  default = "ap-south-1"
}

variable "cluster_name" {
  default = "assignment-eks"
}

variable "vpc_name" {
  default = "assignment-vpc"
}

variable "db_name" {
  default = "assignmentdb"
}

variable "db_username" {
  default = "postgres"
}

variable "db_password" {
  sensitive = true
}