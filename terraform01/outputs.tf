output "instance_id" {
  value = module.ec2.instance_id
}

output "public_ip" {
  value = module.ec2.public_ip
}

output "rds_endpoint" {
  value = module.rds.rds_endpoint
}

output "alb_dns_name" {
  value = module.alb.alb_dns_name
}

output "bucket_arn" {
  value = module.s3.bucket_arn
}

