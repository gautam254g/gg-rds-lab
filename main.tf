terraform {
  backend "remote" { 
  hostname = "terraform.io"
  oraganization = "gg-labs"
  workspaces = {
    name = "gg-rds-lab"
  }
 }
}

provider "aws" {
 region = "us-east-1"
 version = "~> 2.7"
 }
resource "aws_db_instance" "default" {
   identifier             = var.identifier
  allocated_storage      =  var.allocated_storage
  license_model          =  var.license_model
  storage_type           =  var.storage_type
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  name                   = var.db_name
  username               = var.username
  password               =  file("../rdspw/pwfile.txt")
  skip_final_snapshot = true
}