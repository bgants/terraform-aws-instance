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
  subnet_id = data.aws_subnets.default.ids[0]
  vpc_id    = data.aws_vpc.default.id
  ami       = "ami-00a929b66ed6e0de6"
  name_prefix = "example"
  enable_systems_manager = true
  tags = {
    "BillingGroup" = "mygroup"
  }
}
