resource "newrelic_alert_policy" "foo" {
  name = "foo"
}

locals {
  condition_keys = keys(var.condition)
}

resource "newrelic_nrql_alert_condition" "foo" {
  count = length(local.condition_keys)

  account_id                     = var.condition[local.condition_keys[count.index]].account_id
  policy_id                      = newrelic_alert_policy.foo.id
  type                           = var.condition[local.condition_keys[count.index]].type
  name                           = var.condition[local.condition_keys[count.index]].name
  description                    = var.condition[local.condition_keys[count.index]].description
  runbook_url                    = var.condition[local.condition_keys[count.index]].runbook_url
  enabled                        = var.condition[local.condition_keys[count.index]].enabled
  violation_time_limit_seconds   = var.condition[local.condition_keys[count.index]].violation_time_limit_seconds
  fill_option                    = var.condition[local.condition_keys[count.index]].fill_option
  fill_value                     = var.condition[local.condition_keys[count.index]].fill_value
  aggregation_window             = var.condition[local.condition_keys[count.index]].aggregation_window
  aggregation_method             = var.condition[local.condition_keys[count.index]].aggregation_method
  aggregation_delay              = var.condition[local.condition_keys[count.index]].aggregation_delay
  expiration_duration            = var.condition[local.condition_keys[count.index]].expiration_duration
  open_violation_on_expiration   = var.condition[local.condition_keys[count.index]].open_violation_on_expiration
  close_violations_on_expiration = var.condition[local.condition_keys[count.index]].close_violations_on_expiration
  slide_by                       = var.condition[local.condition_keys[count.index]].slide_by
  baseline_direction             = var.condition[local.condition_keys[count.index]].baseline_direction

  nrql {
    query = var.condition[local.condition_keys[count.index]].query
  }

  critical {
    operator              = var.condition[local.condition_keys[count.index]].operator
    threshold             = var.condition[local.condition_keys[count.index]].threshold
    threshold_duration    = var.condition[local.condition_keys[count.index]].threshold_duration
    threshold_occurrences = var.condition[local.condition_keys[count.index]].threshold_occurrences
  }

  warning {
    operator              = var.condition[local.condition_keys[count.index]].operator
    threshold             = var.condition[local.condition_keys[count.index]].threshold
    threshold_duration    = var.condition[local.condition_keys[count.index]].threshold_duration
    threshold_occurrences = var.condition[local.condition_keys[count.index]].threshold_occurrences
  }
}
