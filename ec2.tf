provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0bbdd8c17ed981ef9"  # Example AMI for Amazon Linux 2 in us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "sravanthi"
  }
}
