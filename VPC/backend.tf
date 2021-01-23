terraform {
  required_version = "0.13.0"

  backend "s3" {
    bucket = "terraform-state-akon"
    key    = "path/to/my/key"
    region = "us-east-1"

    #dynamodb_table = "prog"
  }
}