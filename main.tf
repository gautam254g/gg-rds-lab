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
resource "aws_db_instance" "test-rds" {
   identifier                          = "rdsgglpf11"
  apply_immediately                   = true
  engine                              = "oracle-se2"
  engine_version                      = "12.2.0.1.ru-2020-01.rur-2020-01.r1"
  license_model                       = "bring-your-own-license"
  storage_type                        = "gp2"
  allocated_storage                   =  25
  instance_class                      = "db.t3.small"
   name                              = "GGLPF11"
  username                            = "RDSSYSTEM"
  port                                = 1521
  identifier                          = "rdsgglpf11"
  apply_immediately                   = true
  engine                              = "oracle-se2"
  engine_version                      = "12.2.0.1.ru-2020-01.rur-2020-01.r1"
  license_model                       = "bring-your-own-license"
  storage_type                        = "gp2"
  allocated_storage                   =  25
  instance_class                      = "db.t3.small"
   name                              = "GGLPF11"
  username                            = "RDSSYSTEM"
  port                                = 1521
  ##az                                  = "us-east-1b"
  multi_az                            = false
  parameter_group_name                = "GG-oracle-se2-12-2-par-group"
  option_group_name                   = "GG-oracle-se2-12-2-opt-group"
  maintenance_window                  = "Sun:02:00-Sun:06:00"
  deletion_protection                 = false
  backup_retention_period             = 1
  }