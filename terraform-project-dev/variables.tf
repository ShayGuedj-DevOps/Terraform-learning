variable "aws_region" {
  type = string
  default = "eu-central-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type = string
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type = string
  default = "t2.mirco"
}