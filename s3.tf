resource "aws_s3_bucket" "s3-test" {
  bucket = "test-ci-cd-pipeline"

  tags = {
    IAC = "True"
  }
}