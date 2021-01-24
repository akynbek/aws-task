terraform {
backend "s3" {
bucket = "terraform-state-akon"
key = "test/us-east-1/tools/virginia/test.tfstate"
region = "us-east-1"
  }
}
