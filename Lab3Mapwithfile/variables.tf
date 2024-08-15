variable "aws_access_key_id" {}
variable "aws_secret_access_key" {}
variable "aws_region" {
    default = "ap-south-1"
}
variable "webserver_amis" {
  type = map(string)
}