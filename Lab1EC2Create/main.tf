# Configure the AWS provider
provider "aws" {
  
  # Specify the AWS region to create resources in
  region = "us-east-2"

  # Add your AWS access key here
  access_key = ""  # Replace with your access key

  # Add your AWS secret access key here
  secret_key = ""  # Replace with your secret access key
}

# Define an AWS EC2 instance
resource "aws_instance" "name" {
  
  # Specify the AMI ID for the instance
  ami = "ami-0862be96e41dcbf74"  # Replace with your AMI ID

  # Specify the instance type
  instance_type = "t2.micro"  # Type of instance
}
