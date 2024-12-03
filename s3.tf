resource "aws_s3_bucket" "s3-test" {
  bucket = "test-s3-bucket-ci-cd-pipeline"

  tags = {
    IAC = "True"
  }
}