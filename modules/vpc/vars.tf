variable "vpc_cidr" {
  default = "152.136.0.0/16"
}

variable "tendency" {
  default = "default"
}

variable "vpc_name" {
  default = "CITY_VPC"
}

variable "subnet_cidr" {
  default = "152.136.1.0/25"
}

variable "subnet_name" {
  default = "CITY_SUBNET"
}

variable "vpc_id" {}
