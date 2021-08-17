provider "aws"{
    region = "ap-south-1"
}

resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "terraformvpc"
  }
}