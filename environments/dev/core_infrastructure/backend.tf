terraform {
  backend "s3" {
    bucket         = "web-app-dev-todo-app-state"
    key            = "web-app-core-infrastructure/terraform.tfstate"
    dynamodb_table = "web-app-dev-todo-app-locks"
    region         = "us-east-1"
    encrypt        = true
  }
}
