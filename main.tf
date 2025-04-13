resource "aws_instance" "web_server" {
  ami           = var.ami
  subnet_id     = var.subnet_id
  instance_type = var.instance_type
}
