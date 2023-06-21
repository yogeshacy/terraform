variable "ami" {
  description = "Amazon Machine Image value"
  default     = "ami-0bb6af715826253bf"
}
variable "instance_type" {
  description = "Amazon Instance Type"
  default     = "t2.micro"
}
variable "instance_count" {
  description = "No of Instance"
  default     = "2"
}
