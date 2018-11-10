variable "ami" {
  default = "ami-013be31976ca2c322"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "subnet_id" {}

variable "ec2_count" {
  default = "1"
}
