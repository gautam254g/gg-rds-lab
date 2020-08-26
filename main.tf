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
  allocated_storage        = 20 # gigabytes
  engine                   = "mysql"
  engine_version           = "8.0.17"
  identifier               = "mydb1"
  instance_class           = "db.t2.micro"
  multi_az                 = false
  name                     = "mydb1"
  parameter_group_name     = "mydbparamgroup1" # if you have tuned it
  password                 =  file("../rdspw/pwfile.txt")
  port                     = 5432
  publicly_accessible      = true
  storage_encrypted        = true # you should always do this
  storage_type             = "gp2"
  username                 = "mydb1"
  
}
