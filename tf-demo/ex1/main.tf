#provider "aws" {
#  region = "us-east-1"
#}
provider "aws" {}


resource "aws_instance" "web" {
  ami = "ami-065efef2c739d613b"
  instance_type = "t2.micro"
#	tags {
#    Name = "my ec2 instance"
#  }
}

output "print_dns" {
  value = "to connect via ssh: ssh ${aws_instance.web.public_ip}:22"
}