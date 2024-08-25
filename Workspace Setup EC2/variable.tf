variable "region" {
  description = "Region to install the EC2 instance in"
  default     = "us-west-2" 
}
variable "aws_access_key_id" {
  description = "The AWS access key ID"
  type        = string
  sensitive   = true
}

variable "aws_secret_access_key" {
  description = "The AWS secret access key"
  type        = string
  sensitive   = true
}
variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
}
variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro" # Default value, can be overridden
}

variable "key_name" {
  description = "The key name to use for the instance"
  type        = string
}

variable "install_docker" {
  description = "Boolean to specify whether Docker should be installed"
  type        = bool
  default     = false
}

variable "install_jenkins" {
  description = "Boolean to specify whether Jenkins should be installed"
  type        = bool
  default     = false
}

variable "install_tomcat" {
  description = "Boolean to specify whether Tomcat should be installed"
  type        = bool
  default     = false
}

variable "install_nginx" {
  description = "Boolean to specify whether Nginx should be installed"
  type        = bool
  default     = false
}

