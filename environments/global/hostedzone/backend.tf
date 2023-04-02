terraform {
  backend "s3" {
    bucket = "web-app-dev-todo-app-state"
    key    = "hostedzone/terraform.tfstate"
    region = "us-east-1"
  }
}
