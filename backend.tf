
terraform {

  backend "s3" {
    bucket = "astoragebucketnu"
    key    = "anudhiman.tfstate"
    region = "us-east-1"
  }
  
}
