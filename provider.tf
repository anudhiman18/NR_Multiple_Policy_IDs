terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.34.1"
    }
  }
}


provider "newrelic" {
  api_key    = var.{{ secrets.NEW_RELIC_API_KEY }}NEW_RELIC_API_KEY
  account_id = var.{{ secrets.NEW_RELIC_ACCOUNT_ID }}NEW_RELIC_ACCOUNT_ID
}
