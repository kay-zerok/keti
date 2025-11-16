terraform {
  backend "s3" {
    bucket         = "keti-state-bucket"
    key            = "terraform.tfstate"
    region         = "af-south-1"
    dynamodb_table = "keti-state-db"
    encrypt        = true
  }
}