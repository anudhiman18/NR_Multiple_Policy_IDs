resource "newrelic_alert_policy" "policy" {
  for_each = toset(var.policy)

  name = each.value
}
