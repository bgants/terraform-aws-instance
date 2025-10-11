data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }

  # Filter for subnets in specific availability zones
  filter {
    name   = "availability-zone"
    values = ["us-east-1a", "us-east-1b"]
  }

  # Only include subnets that are available (not pending)
  filter {
    name   = "state"
    values = ["available"]
  }

  # Optional: Filter by subnet type (uncomment if needed)
  # filter {
  #   name   = "tag:Type"
  #   values = ["public", "private"]
  # }
}

data "aws_ami" "ubuntu" {
  owners      = ["099720109477"]
  most_recent = true

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

data "aws_iam_policy_document" "instance_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

data "aws_iam_policy" "ssm_arn" {
  arn = "arn:aws:iam::aws:policy/AmazonSSMManagedEC2InstanceDefaultPolicy"
}