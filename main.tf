terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-southeast-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0d02292614a3b0df1"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance1"
  }
}
