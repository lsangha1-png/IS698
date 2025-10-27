# S3 Bucket with Versioning

resource "aws_s3_bucket" "my_bucket" {
  bucket = "lucky-terraform-bucket-lab6" 
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
