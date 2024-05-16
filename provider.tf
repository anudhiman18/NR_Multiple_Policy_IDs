terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.34.1"
    }
  }
}

data "github_actions_secret" "new_relic_account_id" {
  repository = "NR_Multiple_Policy_IDs"
  secret_name = "NEW_RELIC_ACCOUNT_ID"
}

provider "newrelic" {
  api_key    = var.NEW_RELIC_API_KEY
  account_id = data.github_actions_secret.NEW_RELIC_ACCOUNT_ID.value
}
