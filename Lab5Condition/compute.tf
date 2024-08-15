resource "aws_instance" "webserver" {
   ami = lookup(var.webserver_amis,var.aws_region)
   instance_type = "t2.micro"
    
}
output "webserver_publicip" {
  value = aws_instance.webserver.public_ip
}
resource "aws_instance" "weguideibastiabhostnstance" {
  ami = lookup(var.webserver_amis,var.aws_region)
  instance_type = "t2.micro"
  count = var.environment == "dev" ? 0 : 1
}
