provider "aws"{
    region = "us-east-1"
    access_key = "AKIAYHXJXKPKEHK7Q5HL"
    secret_key = "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"
}

resource "aws_instance" "ec2" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0bc998f018bc2e148"]
  tags = {
    Name = "test"
  }
}
