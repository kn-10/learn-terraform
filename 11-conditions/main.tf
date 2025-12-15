terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.17.0"
    }
  }
}
resource "aws_instance" "test" {
  ami = var.ami
  instance_type = var.instance_type == null ? "t3.micro" : var.instance_type
}


variable "ami" {
  default = "ami-0b4f379183e5706b9"
}
variable "instance_type" {
  default = null
}