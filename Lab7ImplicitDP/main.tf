provider "aws" {
  region     = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

# EC2 resource

resource "aws_instance" "demo" {
  ami                    = "${var.ami_id}"
  instance_type          = "${var.instancetype}"
  key_name               = "firstKeypair"
  subnet_id              = "${var.subnetid}"
  vpc_security_group_ids = ["${aws_security_group.bastion.id}"]

  tags = {
    Name = "${var.AppName}"
    Env  = "${var.Env}"
  }
}

resource "aws_security_group" "bastion" {
  name        = "bastion"
  description = "bastion Security Group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.HostIp}"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.PvtIp}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# AWS S3 Resource for Remote Access State

resource "aws_s3_bucket" "remote_state_bucket" {
  bucket        = "bastianpawantest"
  acl           = "private"
  force_destroy = "true"
}
