terraform{
    backend s3 {
        bucket = "gg-tfstate"
        key    = "gg-remote.tfstate"
        region = "us-east-1"
        }

}
resource "aws_instance" "web_server" {
 ami = "ami-b374d5a5"
 instance_type = "t2.micro"
} 
