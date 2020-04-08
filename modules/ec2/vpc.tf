  
resource "aws_vpc" "this" {
  cidr_block            = var.vpc_cidr
  enable_dns_hostnames  = var.enable_dns_hostnames
  enable_dns_support    = var.enable_dns_support
  tags                  = var.tags.vpc
}

resource "aws_subnet" "this_private" {
  cidr_block              = var.cidr_private
  vpc_id                  = aws_vpc.this.id
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone
  tags                    = var.tags.subnet_private
}

resource "aws_subnet" "this_public" {
  cidr_block              = var.cidr_public
  vpc_id                  = aws_vpc.this.id
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone
  tags                    = var.tags.subnet_prublic      
}

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id
  tags   = var.tags.ig
}

resource "aws_route" "this_default_route" {
  route_table_id         = aws_vpc.this.default_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.this.id
}