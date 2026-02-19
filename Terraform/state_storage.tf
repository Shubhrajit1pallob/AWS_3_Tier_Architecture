# data "aws_s3_bucket" "this" {
#   bucket = "full-scale-app-automation-cicd"
# }

resource "aws_dynamodb_table" "this" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}