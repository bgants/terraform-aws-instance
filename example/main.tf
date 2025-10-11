data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

module "test_instance" {
  source    = "../"
  instance_count = 2
  instance_type = "t3.micro"
  name_prefix = "example"
  enable_systems_manager = true
  tags = {
    "BillingGroup" = "mygroup"
  }
}
