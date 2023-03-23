

provider "aws" {
  access_key = "AKIAYHXJXKPKGQOSLO5B"
    secret_key = "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"
  region     = "us-east-1"
}


resource "aws_instance" "ec2" {
  ami                    = "ami-0bb6af715826253bf"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0bc998f018bc2e148"]
  tags = {
    Name = "test"
  }
}