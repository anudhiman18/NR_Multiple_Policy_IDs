output "policy_id" {
  value = [for i in newrelic_alert_policy.policy : i.id]

}
output "policy_name" {
  value     = [for i in newrelic_alert_policy.policy : i.name]
  sensitive = true
}