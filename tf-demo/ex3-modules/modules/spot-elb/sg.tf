resource "aws_s3_bucket" "aa" {
  bucket = "mybucket"
  lifecycle_rule {
    enabled = true
    expiration {
      days = 30
    }
    transition {
      storage_class = "INTELLIGENT_TIERING"
    }
  }
}