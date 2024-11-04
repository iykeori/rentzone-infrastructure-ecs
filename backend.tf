# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "iykeori-terraform-remote-state"
    key            = "terraform-module/iykeori-terraform-remote-state.tfstate"
    region         = "us-east-1"
    profile        = "iykeori"
    dynamodb_table = "terraform-state-lock"
  }
}
