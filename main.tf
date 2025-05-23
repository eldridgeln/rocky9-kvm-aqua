provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "baremetal_kvm_host" {
  ami                         = var.rocky_linux_ami
  instance_type               = "i3.metal"
  key_name                    = var.key_name
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.security_group_id]
  associate_public_ip_address = true

  user_data = file("cloud-init.yaml")

  tags = {
    Name = "Rocky9-Baremetal-KVM-Aqua"
  }

  root_block_device {
    volume_size = 80
    volume_type = "gp3"
  }
}
