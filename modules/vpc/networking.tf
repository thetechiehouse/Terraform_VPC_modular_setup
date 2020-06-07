resource "aws_vpc" "my_vpc" {
  cidr_block       = "${var.vpc_cidr}"

  tags = {
    Name = "my_vpc"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = "${aws_vpc.my_vpc.id}"
  cidr_block = "${var.subnet_cidr}"

  tags = {
    Name = "my vpc sample"
  }
}

output "vpc_id" {
value= "${aws_vpc.my_vpc.id}"
}


output "subnet_id" {
value= "${aws_subnet.my_subnet.id}"
}
