terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.34.1"
    }
  }
}


# provider "newrelic" {
#  api_key    = var.NEW_RELIC_API_KEY.${{ secrets.NEW_RELIC_API_KEY }}
#  account_id = var.NEW_RELIC_ACCOUNT_ID.${{ secrets.NEW_RELIC_ACCOUNT_ID }}
# }


data "github_actions_secret" "newrelic_api_key" {
  secret_name = "NEW_RELIC_API_KEY"
}

data "github_actions_secret" "newrelic_account_id" {
  secret_name = "NEW_RELIC_ACCOUNT_ID"
}

provider "newrelic" {
  api_key    = data.github_actions_secret.newrelic_api_key.value
  account_id = data.github_actions_secret.newrelic_account_id.value
}
