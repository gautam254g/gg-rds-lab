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
  shared_credentials_file = "/c/Users/gouta/.aws/credentials"
}
resource "aws_instance" "web_server" {
 ami = "ami-b374d5a5"
 instance_type = "t2.micro"
} 
