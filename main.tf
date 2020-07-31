terraform {
  backend "remote" { 
  hostname = "app.terraform.io"
  organization = "gg-labs"
  
  workspaces  {
    name = "gg-rds-lab"
  }
 }
}
resource "aws_instance" "web_server" {
 ami = "ami-b374d5a5"
 instance_type = "t2.micro"
} 
