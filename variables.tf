variable "subnet_id" {
  description = "The subnet ID to launch the instance in"
  type        = string
  default     = aws_subnet.main.id
}