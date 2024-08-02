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
