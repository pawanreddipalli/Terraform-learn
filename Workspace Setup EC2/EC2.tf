

resource "aws_instance" "web" {
  ami           = "ami-0862be96e41dcbf74" # Replace with a suitable AMI ID
  instance_type = "t2.micro" # Adjust instance type as needed
  key_name       = "firstKeypair" # Replace with your key pair name

  tags = {
    Name = "MyInstance"
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo su
              apt-get update

              # Create a log file to capture installation results
              LOG_FILE="/var/log/installation_log.txt"
              touch $LOG_FILE
              echo "Installation Log" > $LOG_FILE

              # Install Docker
              if [ "${var.install_docker}" = "true" ]; then
                echo "Installing Docker..." >> $LOG_FILE
                curl -fsSL https://get.docker.com -o get-docker.sh
                sh get-docker.sh
              fi

              # Install Jenkins
              if [ "${var.install_jenkins}" = "true" ]; then
                echo "Installing Jenkins..." >> $LOG_FILE
                echo deb http://pkg.jenkins.io/debian-stable binary/ | tee /etc/apt/sources.list.d/jenkins.list
                curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | tee /usr/share/keyrings/jenkins-keyring.asc
                apt-get update
                apt-get install -y openjdk-11-jdk
                apt-get install -y jenkins
              fi

              # Install apache
              if [ "${var.install_tomcat}" = "true" ]; then
                echo "Installing Apache..." >> $LOG_FILE
                apt-get install -y apache2
                service apache2 start
              fi

              # Install Nginx
              if [ "${var.install_nginx}" = "true" ]; then
                echo "Installing NGINX..." >> $LOG_FILE
                apt-get install -y nginx
                systemctl start nginx
              fi
              EOF

}
