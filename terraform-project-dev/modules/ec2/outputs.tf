output "public_ip" {
  value = aws_instance.dev_project.public_ip
}

output "dev_eip" {
  value = aws_eip.dev_eip.public_ip
  description = "The public IP of the Elastic IP"
}