resource "aws_instance" "dev_project" {
  ami               = var.ami
  instance_type     = var.instance_type
  subnet_id         = var.subnet_id
  security_groups   = [var.security_group_id]  

  tags = {
    Name        = "Dev Project"
    Environment = "Development"
  }
}

resource "aws_eip" "dev_eip" {
  instance = aws_instance.dev_project.id
}

