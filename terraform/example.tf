terraform {
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "devops-course-example-bucket"
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.example.bucket
}
