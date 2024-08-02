
resource "aws_instance" "frontend" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0111e8bfb955a1b59"]

  tags = {
    Name = "frontend"
  }

}
resource "aws_instance" "mongo" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0111e8bfb955a1b59"]

  tags = {
    Name = "mongo"
  }

}
resource "aws_instance" "catalogue" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0111e8bfb955a1b59"]

  tags = {
    Name = "catalogue"
  }

}
resource "aws_instance" "user" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0111e8bfb955a1b59"]

  tags = {
    Name = "user"
  }

}
