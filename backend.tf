
terraform {

  backend "s3" {
    bucket = "mybucket-anu"
    key    = "anu.tfstate"
    region = "us-east-1"
  }
  
}
