
resource "aws_instance" "frontend" {
  ami           =  data.aws_ami.example
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "frontend"
  }

}
resource "aws_route53_record" "frontend" {
  zone_id = var.zone_id
  name    = "frontend.${var.domain_name}"
  type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongo" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "mongo"
  }

}
resource "aws_route53_record" "mongo" {
  zone_id = var.zone_id
  name    = "mongo.${var.domain_name}"
  type    = "A"
  ttl     = 15

  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "catalogue" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "catalogue"
  }

}
resource "aws_route53_record" "catalogue" {
  zone_id = var.zone_id
  name    = "catalogue.${var.domain_name}"
  type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}
