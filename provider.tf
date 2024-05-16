terraform {

  required_providers {

    aws = {

      source  = "hashicorp/aws"

      version = "~> 5.0"

    }

  }

}


provider "aws" {
    region = "ap-south-1"
}

terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.34.1"
    }
  }
}


provider "newrelic" {
api_key    = var.NEW_RELIC_API_KEY
account_id = var.NEW_RELIC_ACCOUNT_ID
}


