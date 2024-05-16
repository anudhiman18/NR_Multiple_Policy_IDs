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
  account_id = data.github_actions_secret.NEW_RELIC_ACCOUNT_ID.value
}
