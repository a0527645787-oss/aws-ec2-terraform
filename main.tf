provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_first_server" {
  ami           = "ami-053b0d53c279acc90" # Ubuntu 22.04 LTS באזור us-east-1 המעודכן
  instance_type = "t3.micro"

  tags = {
    Name = "MyAssignmentInstance"
  }
}
