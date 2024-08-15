
# Learn Terrafrom by running these basic labs

This repository contains basic labs for getting started with Terraform. The labs are designed to help you understand the core concepts of Terraform and how to use it to manage your infrastructure as code.
We learn terraform using the aws cloud here. You are free to fork this repository are play with these labs. Have fun learning !!!

## Prerequisites

1. **Install Terraform**:
Before running any Terraform code, ensure that you have Terraform installed on your machine. You can download it from the [official Terraform website](https://www.terraform.io/downloads.html).

2. **AWS CLI**
Also remember to install the CLI of the cloud provider you are using, in this case we are using aws so we install the aws cli from the [AWS CLI installation guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html).

## Getting Started

To begin working with the Terraform code in this repository, follow the steps below for each lab:

1. **Initialize the Terraform Working Directory**

This step is required to prepare your working directory for other commands. It downloads the necessary provider plugins and sets up the backend configuration.
```bash 
  terraform init
```

2. **Plan the Execution (Optional)**

The *terraform plan* command is optional but recommended as it provides an execution plan. This plan shows what actions Terraform will take to achieve the desired state of your infrastructure.

```bash
  terraform plan
```
3. **Apply the Changes**

To apply the changes and create or update your infrastructure, use the terraform apply command.

 * If you are not passing any variables:

    ```bash
        terraform apply 
    ```

* If you are passing variables:

    Replace "key=value" and "key2=value2" with your actual variable names and values.

    ```bash
        terraform apply -var "key=value" -va2 "key2=value2"

    ```

## Clean Up Your Resources

When learning about cloud infrastructure, it’s crucial to understand not only how to create resources but also how to destroy them. This helps prevent unnecessary costs and ensures that your environment remains clean and manageable.

To destroy the resources created by Terraform, use the terraform destroy command. This command will remove all resources managed by your Terraform configuration.

``` bash
    terraform destroy
```
Make sure to review the plan before applying destruction to confirm that you are removing the correct resources.

## Labs

 ### Lab1 : EC2Create
Learn how to create an EC2 instance on AWS using Terraform.

### Lab2 : variables
Demonstrates how to use variables in Terraform to parameterize your configuration.

### Lab3 : Map with file
Shows how to use maps and files in Terraform to manage configurations dynamically.

### Lab4 : Output Variables
Illustrates how to use output variables to display information about your infrastructure.

### Lab5 : Condition
Explains how to use conditionals in Terraform to create resources based on certain conditions.

### Lab6 : Template
Covers how to use template files in Terraform to generate dynamic configuration files.

### Lab7 : Implicit dependencies 
Introduces implicit dependencies and how Terraform manages resource creation order automatically.

### Lab8 : Explicit dependencies 
Demonstrates explicit dependencies to control the order of resource creation more precisely.

### Lab9 : Install Apache with SSH
Shows how to install Apache on an EC2 instance and configure SSH access. Alternatively you can modify the code to install Nginx instead

### Lab10 : Apache with Basic weather app
Teaches how to deploy Apache and manage files on the server through Terraform. Here is the link to the [Basic Weather App used in the code](https://github.com/pawanreddipalli/Basic-Weather-App).

## Notes

* Always ensure that your Terraform configuration files are properly formatted and validated before applying changes.
* Use the terraform destroy command to clean up resources when they are no longer needed.


## Contribution

If you find any issues or have suggestions for improvement, feel free to open an issue or pull request. Contributions and feedback are welcome!
