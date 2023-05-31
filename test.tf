resource "aws_instance" "ansible-test" {
  ami           = "ami-0aaa5410833273cfe"
  instance_type = "t2.micro" 
  subnet_id     = aws_subnet.subnet-a.id 
  associate_public_ip_address = "true" 
  key_name = "my-keypair" 
  vpc_security_group_ids = ["${aws_security_group.my-sg.id}"]

  tags = {
    Name = "ansible-test" 
  } 
} 


resource "aws_instance" "ansible-real" {
  ami           = "ami-0aaa5410833273cfe"
  instance_type = "t2.micro" 
  subnet_id     = aws_subnet.subnet-b.id 
  associate_public_ip_address = "true" 
  key_name = "my-keypair" 
  vpc_security_group_ids = ["${aws_security_group.my-sg.id}"]

  tags = {
    Name = "ansible-real" 
  } 
} 

resource "aws_instance" "jenkins" {
  ami           = "ami-0aaa5410833273cfe"
  instance_type = "t2.micro" 
  subnet_id     = aws_subnet.subnet-b.id 
  associate_public_ip_address = "true" 
  key_name = "my-keypair" 
  vpc_security_group_ids = ["${aws_security_group.my-sg.id}"]

  tags = {
    Name = "jenkins" 
  } 
} 
