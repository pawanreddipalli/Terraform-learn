resource "aws_instance" "webserver" {
   ami = "ami-0287a05f0ef0e9d9a"
   instance_type = "t2.micro"
   subnet_id = "${module.vpc.public_subnets[0]}"
}