provider "aws" {
  region = "us-east-1" # Change this to your desired region
}

resource "aws_instance" "terraform" {
  ami           = "ami-0886832e6b5c3b9e2"  # Amazon Linux 2 AMI (replace with one valid in your region)
  instance_type = "t2.micro"

  tags = {
    Name = "ec2-instance"
  }
}
