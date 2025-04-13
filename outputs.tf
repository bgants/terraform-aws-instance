output "aws_instance_arns" {
  description = "The ARNs of the instances"
  value       =  aws_instance.web_server[*].arn

}

output "aws_instance_public_ips" {
  description = "The public IP of the instance"
  value       = aws_instance.web_server[*].public_ip
}

output "aws_instance_subnet_ids" {
  description = "The subnet ID of the instance"
  value       = aws_instance.web_server[*].subnet_id
}

output "aws_instance_peofiles" {
  description = "The IAM role of the instance"
  value       = aws_instance.web_server[*].iam_instance_profile
}