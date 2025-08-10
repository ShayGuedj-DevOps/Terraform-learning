output "vpc_id" {
  value = aws_vpc.dev_vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}