provider aws {
region = "us-east-1"
access_key = "AKIA27BLU3ZNK4HUCH4S"
secret_key = "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"
resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
