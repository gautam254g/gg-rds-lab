terraform {
  backend "remote" { 
  hostname = "app.terraform.io"
  organization = "gg-labs"
  
  workspaces  {
    name = "gg-rds-lab"
  }
 }
}

provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
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
 ## password               =  file("../rdspw/pwfile.txt")
  password                 = "temp123"
  skip_final_snapshot = true
}