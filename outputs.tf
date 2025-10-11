output "aws_instance_arns" {
  description = "The ARNs of the instances"
  value       = aws_instance.web_server[*].arn
}

output "aws_instance_public_ips" {
  description = "The public IP of the instance"
  value       = aws_instance.web_server[*].public_ip
}

output "aws_instance_subnet_ids" {
  description = "The subnet ID of the instance"
  value       = aws_instance.web_server[*].subnet_id
}

output "aws_instance_profiles" {
  description = "The IAM role of the instance"
  value       = aws_instance.web_server[*].iam_instance_profile
}

output "aws_iam_role" {
  description = "vaThe AWS IAM role"
  value       = aws_iam_role.main
}