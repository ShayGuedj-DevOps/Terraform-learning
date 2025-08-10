module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source = "./modules/ec2"
  subnet_id = module.vpc.subnet_ids[0]
}

module "rds" {
  source = "./modules/rds"
  subnet_ids = module.vpc.subnet_ids
  vpc_id = module.vpc.vpc_id
}

module "alb" {
  source = "./modules/alb"
  subnet_ids = module.vpc.subnet_ids
  vpc_id = module.vpc.vpc_id
}

module "s3" {
  source = "./modules/s3"
}

