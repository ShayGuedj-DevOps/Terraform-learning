variable "ami" {
  description = "The AMI for the EC2"
  type = string
  default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID where the EC2 instance will be launched"
  type = string
}

variable "security_group_id" {
  description = "Security group ID for the EC2 instance"
  type = string
}

