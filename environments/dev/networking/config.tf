terraform {
  backend "s3" {
    bucket = "dev-s3-learn"
    key    = "dev-network/terraform.tfstate"
    region = "us-east-1"
  }
}