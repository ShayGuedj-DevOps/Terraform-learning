provider "aws" {
  region = var.aws_region
}

module "ec2" {
  source = "./modules/ec2"
  ami = var.ami_id
  instance_type = var.instance_type
  sunbet_id = module.vpc.public_subnet_id
  security_group_id = module.security_group_id
}

module "vpc" {
  source = "./modules/vpc"
  cidr_block = var.vpc_cidr_block
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

