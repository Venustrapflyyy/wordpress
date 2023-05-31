#creates a public route table that routes traffic locally and to the internet via my internet gateway 
resource "aws_route_table" "my-rt" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "0.0.0.0/0" 
    gateway_id = aws_internet_gateway.my-igw.id
  }

   tags = {
    Name = "my-rt"
  }
}

#associate this route table to public subnet a 
resource "aws_route_table_association" "my-rt1" {
  subnet_id     = aws_subnet.subnet-a.id
  route_table_id = aws_route_table.my-rt.id 
}

#associate this route table to public subnet b
resource "aws_route_table_association" "my-rt2" {
   subnet_id     = aws_subnet.subnet-b.id
  route_table_id = aws_route_table.my-rt.id 
} 
