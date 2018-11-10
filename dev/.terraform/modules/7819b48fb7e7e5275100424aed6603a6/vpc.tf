resource "aws_vpc" "myvpc" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "${var.tendency}"

  tags {
    Name = "${var.vpc_name}"
  }
}

resource "aws_subnet" "mysubnet" {
  vpc_id     = "${var.vpc_id}"
  cidr_block = "${var.subnet_cidr}"

  tags {
    Name = "${var.subnet_name}"
  }
}

output "vpc_id" {
  value = "${aws_vpc.myvpc.id}"
}

output "subnet_id" {
  value = "${aws_subnet.mysubnet.id}"
}
