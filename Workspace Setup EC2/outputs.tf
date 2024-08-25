# outputs.tf

output "user_data_script" {
  description = "The user data script used for the EC2 instance"
  value       = aws_instance.web.user_data
  sensitive   = true
}
