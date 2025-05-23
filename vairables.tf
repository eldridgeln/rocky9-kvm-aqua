variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "rocky_linux_ami" {
  description = "Rocky Linux 9 AMI ID"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID to launch EC2"
  type        = string
}

variable "security_group_id" {
  description = "Security Group ID with SSH access"
  type        = string
}

variable "aqua_gateway" {
  description = "Aqua Gateway URL (host:port)"
  type        = string
}

variable "aqua_enforcer_token" {
  description = "Enforcer token from Aqua Console"
  type        = string
}
