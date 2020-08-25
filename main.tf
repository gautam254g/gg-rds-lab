provider "aws" {
  region = "us-east-1"
}
  
terraform {
  backend "remote" { 
  hostname = "app.terraform.io"
  organization = "gg-labs"
    
  workspaces  {
    name = "gg-rds-lab"
  }
 }
}
/*
resource "aws_instance" "Web_server" {
 ami = "ami-b374d5a5"
 instance_type = "t2.micro"
}
*/
resource "aws_db_instance" "mydb1" {
  allocated_storage        = 256 # gigabytes
  backup_retention_period  = 7   # in days
  db_subnet_group_name     = "${var.rds_public_subnet_group}"
  engine                   = "postgres"
  engine_version           = "9.5.4"
  identifier               = "mydb1"
  instance_class           = "db.r3.large"
  multi_az                 = false
  name                     = "mydb1"
  parameter_group_name     = "mydbparamgroup1" # if you have tuned it
  password                 = "${trimspace(file("/c/Gautam_Office/AWS/Terraform/Labs/pwfile.txt"))}"
  port                     = 5432
  publicly_accessible      = true
  storage_encrypted        = true # you should always do this
  storage_type             = "gp2"
  username                 = "mydb1"
  vpc_security_group_ids   = ["${aws_security_group.mydb1.id}"]
}
