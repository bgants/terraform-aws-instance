output "aws_instance_arn" {
  description = "The ARNs of the instances"
  value       = [for instance in aws_instance.web_server : instance.arn]

}

output "aws_instance_ip" {
  description = "The public IP of the instance"
  value       = [for instance in aws_instance.web_server : instance.public_ip]
}

output "aws_instance_subnet_id" {
  description = "The subnet ID of the instance"
  value       = [ for instance in aws_instance.web_server : instance.subnet_id ]
}

output "aws_instance_role" {
  description = "The IAM role of the instance"
  value       = [ for instance in aws_instance.web_server : instance.iam_instance_profile ]
}