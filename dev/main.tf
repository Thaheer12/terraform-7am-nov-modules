provider "aws" {
  region = "us-west-2"
}

module "my_vpc" {
  source      = "../modules/vpc"
  vpc_cidr    = "${var.vpc_cidr}"
  vpc_name    = "WU_VPC"
  subnet_cidr = "145.123.1.0/25"
  subnet_name = "WU_SUBNET"
  vpc_id      = "${module.my_vpc.vpc_id}"
}

module "my_ec2" {
  source    = "../modules/ec2"
  ec2_count = 2
  ami       = "ami-a0cfeed8"
  subnet_id = "${module.my_vpc.subnet_id}"
}
