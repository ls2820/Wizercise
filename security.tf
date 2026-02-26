resource "aws_s3_bucket" "audit_log_bucket" {
..bucket = "wiz-app-audit-logs"
..# This is a dummy file to ensure the IaC security pipeline has code to scan
}
