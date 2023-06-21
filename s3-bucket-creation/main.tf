resource "aws_s3_bucket" "acybuckets" {
  bucket = "acybucker180623"
  acl    = "private"
  versioning {
    enabled = true
  }
  tags = {
    Name = "S3 bucker by yogesh"
  }
}
