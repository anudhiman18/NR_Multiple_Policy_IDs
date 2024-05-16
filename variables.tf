variable "policy" {
    type = set(string)
}

variable "NEW_RELIC_API_KEY" {
  description = "API key for New Relic"
  type        = string
}
 
variable "NEW_RELIC_ACCOUNT_ID" {
  description = "Account ID for New Relic"
  type =  number
}

# variable "policy_name" {
#   type = set(string)

# }
