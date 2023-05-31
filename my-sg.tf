resource "aws_security_group" "my-sg" {
  name        = "my-sg"
  description = "Allows traffic to my instances from the internet" 
  vpc_id      = aws_vpc.my-vpc.id 

  tags = {
  Name = "my-sg"
  }
}

  resource "aws_security_group_rule" "my-sg-rule-ing1" {
    type             = "ingress"
    description      = "SSH from internet"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp" 
    cidr_blocks      = ["0.0.0.0/0"] 
    security_group_id = "${aws_security_group.my-sg.id}" 
  }

  resource "aws_security_group_rule" "my-sg-rule-ing2" {
    type             = "ingress"
    description      = "HTTP from internet"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp" 
    cidr_blocks      = ["0.0.0.0/0"] 
    security_group_id = "${aws_security_group.my-sg.id}" 
  }

  resource "aws_security_group_rule" "my-sg-rule-ing3" {
    type             = "ingress"
    description      = "HTTPS from internet"
    from_port        = 443 
    to_port          = 443 
    protocol         = "tcp" 
    cidr_blocks      = ["0.0.0.0/0"] 
    security_group_id = "${aws_security_group.my-sg.id}" 
  }

  resource "aws_security_group_rule" "my-sg-rule-egr1" {
    type             = "egress"
    description      = "everything to the internet"
    from_port        = 0 
    to_port          = 0 
    protocol         = "-1" 
    cidr_blocks      = ["0.0.0.0/0"] 
    security_group_id = "${aws_security_group.my-sg.id}" 
  } 