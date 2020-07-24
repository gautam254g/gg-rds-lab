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

  assume_role {
    role_arn = "arn:aws:iam::425518740947:user/gghosh"
    session_name = "terraform"
  }
}
resource "aws_instance" "web_server" {
 ami = "ami-b374d5a5"
 instance_type = "t2.micro"
} 
