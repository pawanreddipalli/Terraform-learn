# Variables TF File

variable "access_key" {
  description = "AWS Access Key"
  
}

variable "secret_key" {
  description = "AWS Secret Key"
}

variable "region" {
  description = "AWS Region "
  default     = "us-east-2"
}

variable "ami_id" {
  description = "AMI ID to be used for Instance "
  default     = "ami-0862be96e41dcbf74"
}

variable "instancetype" {
  description = "Instance Type to be used for Instance "
  default     = "t2.micro"
}

variable "subnetid" {
  description = "Subnet ID to be used for Instance "
  default     = "subnet-0512d82c2f8723c9a"
}

variable "AppName" {
  description = "Application Name"
  default     = "Bastion-Host"
}

variable "Env" {
  description = "Application Name"
  default     = "Dev"
}

variable "HostIp" {
  description = " Host Public IP to be allowed SSH for"
  default     = "49.207.226.140/32"
}

variable "PvtIp" {
  description = " Host IP to be allowed SSH for"
  default     = "172.31.0.0/16"
}

variable "PvtIP" {
  description = " Host IP to be allowed SSH for"
  default     = "172.31.0.0/16"
}
