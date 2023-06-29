provider "aws"{
region = "us-east-1"
access_key ="AKIAVAMDXMJYKHSHFQX7"
secret_key ="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"
}
resource "aws_instance" "one" {

ami = "ami-090e0fc566929d98b"
instance_type = "t2.micro"
key_name = "vivekslavekey"
vpc_security_group_ids = [aws_security_group.sec.id]
tags = {
Name = "vivekprod"
Environment = "prod"
}
}
