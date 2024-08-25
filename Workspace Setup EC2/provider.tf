# Configure the AWS provider
provider "aws" {

  region = "us-east-2" # Adjust as needed

  # Use a variable for the AWS access key
  access_key = "${var.aws_access_key_id}"

  # Use a variable for the AWS secret access key
  secret_key = "${var.aws_secret_access_key}"
}