output "ec2_public_ip" {
  value = module.ec2.public_ip
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "security_group_id" {
  value = module.security_group.security_group_id
}

output "dev_eip" {
  value = module.ec2.dev_eip
  description = "The public IP of the Elastic IP"
}
