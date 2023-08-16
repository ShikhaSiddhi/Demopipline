provider "aws" {
  region = "ap-southeast-2"  # Update with your desired AWS region
}

resource "aws_instance" "example_instanceSS" {
  ami           = "ami-0310483fb2b488153"  # Amazon Linux 2 AMI ID
  instance_type = "t2.micro"
  key_name      = "HandsonKey"  # Update with your key pair name

  tags = {
    Name = "ExampleInstanceSS"
  }
}
