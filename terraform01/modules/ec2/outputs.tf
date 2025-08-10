output "instance_id" {
  value = aws_instance.example.id
}

output "public_ip" {
  value = aws_eip.example.public_ip
}

