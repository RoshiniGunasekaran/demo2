provider "aws" {
  alias  = "custom_aws"
  region = "ap-south-1"
}

resource "aws_vpc" "custom_demo_vpc" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    Name = "CustomDemoVPC"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.custom_demo_vpc.id
  cidr_block              = "10.0.0.0/24"  
  tags = {
    Name = "Subnet1"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id                  = aws_vpc.custom_demo_vpc.id
  cidr_block              = "10.0.1.0/24"  # Adjusted CIDR block
  tags = {
    Name = "Subnet2"
  }
}
