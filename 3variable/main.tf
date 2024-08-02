# string
variable "name" {
  default = "SRIRAM"
}
output "name" {
  value = var.name
}
# number
variable "a" {
  default = 15
}
output "a" {
  value = var.a
}
#  boolean
variable "b" {
  default = true
}
output "b" {
  value =  " value of b is ${var.b}"
}

variable "ab" {
  default = [12,35,"abc","hello",false]
}
output "ab" {
  value = "value of ab ${var.ab[3]}"
}