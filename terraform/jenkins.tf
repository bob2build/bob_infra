variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "region" {
    default = "us-west-2"
}

provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.region}"
}

resource "aws_security_group" "allow_all" {
  name = "allow_all"
  description = "Allow all inbound traffic"

  ingress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "example" {
    ami = "ami-d2c924b2"
    instance_type = "t2.medium"
    key_name = "bob2build"
    security_groups = ["allow_all"]
}
