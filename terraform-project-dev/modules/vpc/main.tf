resource "aws_vpc" "dev_vpc" {
  cidr_block = var.cidr_block

  tags = {
    Name = "Dev-VPC"
    Environment = "Development"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.dev_vpc.id
  cidr_block = "10.0.0.0/16"
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true
}

