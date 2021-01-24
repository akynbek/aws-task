terraform {
  backend "s3" {
    bucket = "terraform-state-april-class-akynbek"
    key    = "jenkins/us-east-1/tools/sao_paulo/asg.tfstate"
    region = "us-east-1"
  }
}
