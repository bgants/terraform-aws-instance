variable "subnet_id" {
  description = "The subnet ID to launch the instance in"
  type        = string
  default     = "subnet-29876e4d"
}
variable "ami" {
  type        = string
  description = "The Amazon Machine Image to use when launching the EC2 Instance."
}

variable "subnet_id" {
  type        = string
  description = "The ID of the Subnet to launch the instance into."
}

variable "instance_type" {
  type        = string
  description = "The type of instance to launch."
  default     = "t3.micro"
}
