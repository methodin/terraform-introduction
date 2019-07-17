resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-test-bucket-${random_uuid.test.result}"
  acl    = "private"

  tags = {
    Environment = "Test"
  }
}
