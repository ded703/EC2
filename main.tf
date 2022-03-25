terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 1.1.3"
  }


provider "aws" {
  region = "eu-central-1"
  }

resource "aws_instance" "app_server" {
  ami           = "ami-0dcc0ebde7b2e00db"
  instance_type = "t3.micro"
  subnet_id     = "subnet-0e22f4a02f624d1f0"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
