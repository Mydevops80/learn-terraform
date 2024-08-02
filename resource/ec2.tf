
resource "aws_instance" "frontend" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0111e8bfb955a1b59"]

  tags = {
    Name = "frontend"
  }

}
