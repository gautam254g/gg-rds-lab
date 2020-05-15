provider "aws" {
 region = "us-east-1"
 version = "~> 2.7"
 }
resource "aws_db_instance" "default" {
 ## depends_on             = ["aws_security_group.default"]
  identifier             = "${var.identifier}"
  allocated_storage      =  var.allocated_storage
  license_model          =  var.license_model
    storage_type           =  var.storage_type
  engine                 = "${var.engine}"
  engine_version         = var.engine_version
  instance_class         = "${var.instance_class}"
  name                   = "${var.db_name}"
  username               = "${var.username}"
  password               =  "${file("../rdspw/pwfile.txt")}"
 ## vpc_security_group_ids = ["${aws_security_group.default.id}"]
 ## db_subnet_group_name   = "${aws_db_subnet_group.default.id}"
  skip_final_snapshot = true
}

