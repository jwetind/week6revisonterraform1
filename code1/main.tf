terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_group" "group1" {
  name = "security"
}
resource "aws_iam_user" "user1" {
  name = "Cadette"
  
  
}
resource "aws_lightsail_instance" "lightsail" {
  name              = "john_wetindi"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  key_pair_name     = "today"
  tags = {
    env = "qa"
  }
}
