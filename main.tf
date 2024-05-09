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

resource "newrelic_alert_policy" "policy" {
  for_each = toset(var.policy)

  name = each.value
}
