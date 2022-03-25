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
  region = "eu-west-1"
  }

resource "aws_instance" "app_server" {
  ami           = "ami-0069d66985b09d219"
  instance_type = "t3.micro"
  subnet_id     = "subnet-021b967ea4fcad010"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
