terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.34.1"
    }
  }
}

provider "newrelic" {
  API_KEY    = var.NEW_RELIC_API_KEY
  ACCOUNT_ID = var.NEW_RELIC_ACCOUNT_ID
}
