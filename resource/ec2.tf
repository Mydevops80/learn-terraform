
resource "aws_instance" "frontend" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t2.micro"

  tags = {
    Name = "frontend"
  }
}
