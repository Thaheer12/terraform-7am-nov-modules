resource "aws_instance" "my_instance" {
  count         = "${var.ec2_count}"
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  subnet_id     = "${var.subnet_id}"

  tags {
    Name = "HelloWorld"
  }
}
