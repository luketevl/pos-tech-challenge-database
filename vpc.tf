resource "aws_vpc" "restaurante_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.restaurante_vpc.id
}

resource "aws_subnet" "public_subnet_a" {
  vpc_id            = aws_vpc.restaurante_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "public_subnet_b" {
  vpc_id            = aws_vpc.restaurante_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"
}

resource "aws_subnet" "private_subnet_a" {
  vpc_id            = aws_vpc.restaurante_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "private_subnet_b" {
  vpc_id            = aws_vpc.restaurante_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1b"
}
