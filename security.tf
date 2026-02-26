resource "aws_s3_bucket" "audit_log_bucket" {
  bucket = "wiz-app-audit-logs-ls2820-unique"
}

resource "aws_s3_bucket_public_access_block" "bad_example" {
  bucket                  = aws_s3_bucket.audit_log_bucket.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
