variable "components" {
  default = {
    frontend = {
      name = "frontend"
      instance_type = "t3.micro"
    }
    backend = {
      name = "backend"
      instance_type = "t3.micro"
    }
    mysql = {
      name = "mysql"
      instance_type = "t3.micro"
    }
  }
}

variable "vpc_security_group_ids" {
  default = ["sg-0a13f9496e8f730c7"]
}

variable "zone_id" {
  default = "Z0266758558URTEO39RC"
}

