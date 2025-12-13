resource "aws_route53_record" "records" {
  zone_id = "Z0266758558URTEO39RC"
  name    = "test"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]

}
  variable "private_ip" {}

