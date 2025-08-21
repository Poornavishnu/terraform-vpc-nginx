terraform {
  backend "s3" {
    bucket         = "terraform-state-poornavishnu"
    key            = "vpc-nginx/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}