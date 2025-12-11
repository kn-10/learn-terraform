terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
  }
}
resource "null_resource" "test" {
  count = 10
}

output "test" {
  value = null_resource.test.*.id

}

resource "aws_instance" "test" {
  count                  = 3
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0a13f9496e8f730c7"]

  tags = {
    Name = "test-$(count.index)"
  }
}