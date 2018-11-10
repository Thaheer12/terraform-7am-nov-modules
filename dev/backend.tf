terraform {
  backend "s3" {
    bucket = "devops-mptech369"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
