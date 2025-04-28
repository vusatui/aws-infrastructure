terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.96.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_lightsail_instance" "coolify" {
  name              = "coolify-instance"
  availability_zone = "eu-west-1a"
  blueprint_id      = "ubuntu_22_04"
  bundle_id         = "medium_2_0"
  key_pair_name     = "ssh-key-1"

  user_data = file("${path.module}/scripts/setup-coolify.sh")

  tags = {
    Name = "coolify-server"
  }
}

resource "aws_lightsail_static_ip" "coolify_ip" {
  name = "coolify-static-ip"
}

resource "aws_lightsail_static_ip_attachment" "coolify_ip_attach" {
  static_ip_name = aws_lightsail_static_ip.coolify_ip.name
  instance_name  = aws_lightsail_instance.coolify.name
}