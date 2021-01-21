resource "aws_s3_bucket" "private-buket" {
    bucket = "m-yamaguchi.sample.bucket"
    acl    = "private"

    tags = {
        Name        = "My bucket"
        Environment = "Dev"
    }
}