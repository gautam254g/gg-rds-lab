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
resource "aws_instance" "Web_server" {
 ami = "ami-b374d5a5"
 instance_type = "t2.micro"
}
