terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.17.0"
    }
  }
}
resource "aws_instance" "instances" {
  for_each               = var.components
  ami                    = data.aws_ami.centos8.image_id
  instance_type          = lookup(each.value,"instance_type",null)
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = lookup(each.value,"name",null)
  }
}

resource "aws_route53_record" "records" {
  for_each               = var.components
  zone_id                = var.zone_id
  name                   = lookup(each.value,"name",null)
  type                   = "A"
  ttl                    = 30
  records                = [lookup(lookup(each.key,aws_route53_record.records,"name",null)),"private_ip",null]
}


