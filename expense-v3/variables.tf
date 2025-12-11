variable "instance_type" {
  default = "t3.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-0a13f9496e8f730c7"]
}

variable "zone_id" {
  default = "Z0266758558URTEO39RC"
}

variable "components" {
  default = ["frontend", "backend", "mysql"]
}

