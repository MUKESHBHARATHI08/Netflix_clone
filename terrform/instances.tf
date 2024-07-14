resource "aws_instance" "instance_large" {
  ami           = var.ami
  instance_type = var.instance_large_type
  key_name      = var.key_name

  tags = {
    Name = "InstanceLarge"
  }

  root_block_device {
    volume_type = "gp2"
    volume_size = var.volume_size
  }

  security_groups = [aws_security_group.allow_http_https_ssh.name]
}

resource "aws_instance" "instance_medium" {
  ami           = var.ami
  instance_type = var.instance_medium_type
  key_name      = var.key_name

  tags = {
    Name = "InstanceMedium"
  }

  root_block_device {
    volume_type = "gp2"
    volume_size = var.volume_size
  }

  security_groups = [aws_security_group.allow_http_https_ssh.name]
}
