

resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr
}
#create the subnet sub1 
resource "aws_subnet" "sub1" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1a"
  map_customer_owned_ip_on_launch = true
}
#create the subnet sub2 
resource "aws_subnet" "sub2" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1b"
  map_customer_owned_ip_on_launch = true
}
#create Internet Gateway
resource "internet_gateway" "ig" {
    vpc_id =aws_vpc.myvpc.id
}
#Defined routetable 
resource "aws_route_table" "RT" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }
}

resource "aws_route_table_association" "rta1" {
  subnet_id      = aws_subnet.sub1.id
  route_table_id = aws_route_table.RT.id
}
resource "aws_route_table_association" "rta2" {
  subnet_id      = aws_subnet.sub2.id
  route_table_id = aws_route_table.RT.id
}







