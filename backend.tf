
terraform {

  backend "s3" {
    bucket = "mybucket-anu"
    key    = "anudhiman.tfstate"
    region = "us-east-1"
  }
  
}
