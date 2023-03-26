provider aws{
    region = us-east-1"
    access_key = "AKIAYHXJXKPKMOE5VRUP"
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
