resource "aws_instance" "Bastion" {
  ami = lookup(var.webserver_amis,var.aws_region)
  instance_type = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.bastionsg.id}"]
  key_name               = "firstKeypair"
   tags = {
    Name = "Bastinhost"
    Env  = "prod"
  }
  provisioner "remote-exec" {
  inline=[
  "sudo apt-get update",
  "sudo apt-get install apache2 -y",
  "sudo systemctl start apache2"
  ]
}
 connection {
  host = aws_instance.Bastion.public_ip
   type = "ssh"
   user = "ubuntu"
   private_key = "${file("firstKeypair.pem")}"
 }
}
output "webserver_publicip" {
  value = aws_instance.Bastion.public_ip
}



resource "aws_security_group" "bastionsg" {
  name        = "bastionsg"
  description = "bastion Security Group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
