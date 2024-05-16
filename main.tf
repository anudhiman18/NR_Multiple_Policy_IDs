resource "newrelic_alert_policy" "policy" {
  for_each = toset(var.policy)

  name = each.value
}
resource "github_actions_secret" "new_relic_account_id" {
  repository = "NR_Multiple_Policy_IDs"
  secret_name = "NEW_RELIC_ACCOUNT_ID"
}
