# Define a variable for the AWS region
variable "aws_region" {
  # Default value for the AWS region
  default = "us-east-2"
}

# Define a variable for the AWS access key ID
variable "aws_access_key_id" {
  # Optional: If you have configured the AWS CLI with credentials,
  # You can set a default value here if desired.
}

# Define a variable for the AWS secret access key
variable "aws_secret_access_key" {
  # Optional: If you have configured the AWS CLI with credentials,
  # You can set a default value here if desired.
}