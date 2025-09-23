# ✅ No provider block here
resource "aws_s3_bucket" "sravanthi_bucket" {
  bucket = "sravanthi-srav123-bucket-af3d7e2b"

  tags = {
    Name        = "sravanthi-srav123"
    Environment = "Dev"
  }
}
# ✅ No provider block here
resource "aws_s3_bucket" "ramu_bucket" {
  bucket = "ramu-ram-bucket-dftgfff"

  tags = {
    Name        = "ramu-ram-bucket"
    Environment = "Dev"
  }
}










/*
provider "aws" {
  region = "us-east-1"
}

# 1️⃣ Create AWS Key Pair
resource "aws_key_pair" "maven_key" {
  key_name   = "maven-key"                      # Name of the key in AWS
  public_key = file("C:/Intel/maven-key.pub")   # Path to your public key
}

# 2️⃣ Security Group for EC2
resource "aws_security_group" "jenkins_sg" {
  name        = "jenkins-sg"
  description = "Allow SSH and Jenkins port"
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
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

# 3️⃣ EC2 Instance
resource "aws_instance" "jenkins_instance" {
  ami             = "ami-08982f1c5bf93d976"  # Amazon Linux 2023 AMI
  instance_type   = "t2.medium"
  key_name        = aws_key_pair.maven_key.key_name
  security_groups = [aws_security_group.jenkins_sg.name]

  user_data = <<-EOF
              #!/bin/bash
              set -e

              echo "🔄 Updating system..."
              sudo dnf update -y

              echo "☕ Installing Java 17 (OpenJDK)..."
              sudo dnf install -y java-17-amazon-corretto
              java -version

              echo "📦 Adding Jenkins repo..."
              sudo curl -fsSL https://pkg.jenkins.io/redhat-stable/jenkins.repo -o /etc/yum.repos.d/jenkins.repo
              sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

              echo "📦 Installing Jenkins..."
              sudo dnf install -y jenkins

              echo "🚀 Enabling and starting Jenkins service..."
              sudo systemctl enable jenkins
              sudo systemctl start jenkins
              sudo systemctl status jenkins -l --no-pager

              echo "⏳ Waiting for Jenkins to initialize..."
              sleep 30

              echo "🔑 Saving Jenkins Initial Admin Password..."
              sudo cat /var/lib/jenkins/secrets/initialAdminPassword > /home/ec2-user/jenkins_initial_password.txt
              sudo chmod 644 /home/ec2-user/jenkins_initial_password.txt

              EOF

  tags = {
    Name = "Jenkins-EC2"
  }
}

# 4️⃣ Output EC2 Public IP
output "ec2_ip" {
  value = aws_instance.jenkins_instance.public_ip
}
*/