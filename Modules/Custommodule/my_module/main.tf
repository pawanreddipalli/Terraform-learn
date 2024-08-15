resource "aws_instance" "webserver" {
   ami = "ami-0287a05f0ef0e9d9a"
   instance_type = "t2.micro"
}