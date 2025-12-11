data "aws_ami" "example" {
  most_recent  = true
  name_regex   = "Centos-8-DevOps-Practice"
  owners       = ["367241114876"]
}

output "ami_id" {
  value        = data.aws_ami.example.image_id
}


