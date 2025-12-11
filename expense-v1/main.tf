terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.17.0"
    }
  }
}
resource "aws_instance" "frontend" {
  ami                    =  "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0a13f9496e8f730c7"]

  tags = {
    Name = "frontend-dev"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z0266758558URTEO39RC"
  name    = "frontend-dev"
  type    = "A"
  ttl     = 30

  records = [aws_instance.frontend.private_ip]
}



resource "aws_instance" "backend" {
  ami                    =  "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0a13f9496e8f730c7"]

tags = {
  Name = "backend-dev"
 }
}

resource "aws_route53_record" "backend" {
  zone_id = "Z0266758558URTEO39RC"
  name    = "backend-dev"
  type    = "A"
  ttl     = 30

  records = [aws_instance.backend.private_ip]
}



resource "aws_instance" "mysql" {
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0a13f9496e8f730c7"]

  tags = {
    Name = "mysql-dev"
  }
}


resource "aws_route53_record" "mysql" {
  zone_id = "Z0266758558URTEO39RC"
  name    = "mysql-dev"
  type    = "A"
  ttl     = 30

  records = [aws_instance.mysql.private_ip]
}
