variable "ami" {
  default = "ami-041e2ea9402c46c32"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "vpc_security_group_ids" {
  default = ["sg-0111e8bfb955a1b59"]
}
variable "zone_id" {
  default = "Z047424331HPGCCLF50H9"
}
variable "domain_name" {
  default = "heydevops.online"
}