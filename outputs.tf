output "aws_instance_arn" {
  description = "The ARN of the hello world instance"
  value      = aws_instance.hello_world.arn
}

output "aws_instance_ip" {
  description = "The public IP of the hello world instance"
  value      = aws_instance.hello_world.public_ip
}

output "aws_instance" {
  description = "The entire hello world instance object"
  value      = aws_instance.hello_world
}
