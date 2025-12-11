terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.17.0"
    }
  }
}
resource "aws_instance" "frontend" {
  ami                    =  var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "frontend-dev"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = var.ami
  name    = "frontend-dev"
  type    = "A"
  ttl     = 30

  records = [aws_instance.frontend.private_ip]
}



resource "aws_instance" "backend" {
  ami                    =  var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

tags = {
  Name = "backend-dev"
 }
}

resource "aws_route53_record" "backend" {
  zone_id = var.zone_id
  name    = "backend-dev"
  type    = "A"
  ttl     = 30

  records = [aws_instance.backend.private_ip]
}



resource "aws_instance" "mysql" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "mysql-dev"
  }
}


resource "aws_route53_record" "mysql" {
  zone_id = var.zone_id
  name    = "mysql-dev"
  type    = "A"
  ttl     = 30

  records = [aws_instance.mysql.private_ip]
}
