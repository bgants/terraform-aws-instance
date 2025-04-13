variable "instance_type" {
  type        = string
  description = "The type of instance to launch."
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "The subnet ID to launch the instance in"
  type        = string
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

variable "name_prefix" {
  type        = string
  description = "The prefix for the name tag of the instance."
  default     = "dev"
}

variable "tags" {
  type = map(string)
  description = "Key/Value pairs to pass to AWS as Tags."
  default = {}
}

variable "instance_count" {
  type        = number
  description = "The number of instances to launch."
  default     = 1
  validation {
    condition = can(parseint(tostring(var.instance_count), 10))
    error_message = "The instance count must be a number."
  }

  validation {
    condition     = var.instance_count > 0
    error_message = "The instance count must be greater than 0."
  }
}

variable "enable_systems_manager" {
  type        = bool
  description = "Enable Systems Manager for the instance."
  default     = false
}
