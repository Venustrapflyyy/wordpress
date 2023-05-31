#creates a public subnet in availability zone "eu-west-2a" 
resource "aws_subnet" "subnet-a" {
  vpc_id     = aws_vpc.my-vpc.id 
  cidr_block = "10.0.0.0/20" 
  availability_zone = "eu-west-2a" 

  tags = {
    Name = "subnet-a"
  }
}


#creates a public subnet in availability zone "eu-west-2b" 
resource "aws_subnet" "subnet-b" {
  vpc_id     = aws_vpc.my-vpc.id 
  cidr_block = "10.0.64.0/20" 
  availability_zone = "eu-west-2b"

  tags = {
    Name = "subnet-b"
  }
}
