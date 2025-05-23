variable "aws_region" {
  default = "us-east-1"
}

variable "rocky_linux_ami" {
  description = "Rocky Linux 9 AMI ID"
}

variable "key_name" {
  description = "Name of the EC2 key pair"
}

variable "subnet_id" {
  description = "Subnet ID where the instance will be deployed"
}

variable "security_group_id" {
  description = "Security Group ID for the instance"
}
