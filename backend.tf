
terraform {

  backend "s3" {
    bucket = "mybucket-anu"
    key    = "anu.tfstate"
    region = "ap-south-1"
  }
  
}
