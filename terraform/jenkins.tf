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

resource "aws_instance" "example" {
    ami = "ami-d2c924b2"
    instance_type = "t2.micro"
}
