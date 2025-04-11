variable "instance_type" {
  type        = string
  description = "The type of instance to launch."
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "The subnet ID to launch the instance in"
  type        = string
  default     = "subnet-29876e4d"
  validation {
    condition     = length(regexall("^subnet-[\\d|\\w]+$", var.subnet_id)) == 1
    error_message = "The subnet ID must  match the pattern ^subnet-[\\d][\\w]+$"
  }
}

variable "ami" {
  type        = string
  description = "The Amazon Machine Image to use when launching the EC2 Instance."
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC."
}
