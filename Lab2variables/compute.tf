# Define an AWS EC2 instance
resource "aws_instance" "test" {

  # Specify the AMI ID for the instance
  ami = "ami-0862be96e41dcbf74"  # Replace with your AMI ID

  # Specify the instance type
  instance_type = "t2.micro"  # Type of instance
}
