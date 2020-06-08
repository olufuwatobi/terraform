resource "aws_s3_bucket" "s3backend" {
  bucket = "bitoler"

  versioning {
    enabled = true
  }

  force_destroy = true
}
