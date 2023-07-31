resource "newrelic_alert_policy" "count_alert" {
  name = "count_alert"
}

resource "newrelic_nrql_alert_condition" "foo" {
  count=length(var.alert_loop)

  account_id                     = var.alert_loop[count.index].account_id
  policy_id                      = newrelic_alert_policy.count_alert.id
  type                           = var.alert_loop[count.index].type
  name                           = var.alert_loop[count.index].name
  description                    = var.alert_loop[count.index].description
  runbook_url                    = var.alert_loop[count.index].runbook_url
  enabled                        = var.alert_loop[count.index].enabled
  violation_time_limit_seconds   = var.alert_loop[count.index].violation_time_limit_seconds
  fill_option                    = var.alert_loop[count.index].fill_option
  fill_value                     = var.alert_loop[count.index].fill_value
  aggregation_window             = var.alert_loop[count.index].aggregation_window
  aggregation_method             = var.alert_loop[count.index].aggregation_method
  aggregation_delay              = var.alert_loop[count.index].aggregation_delay
  expiration_duration            = var.alert_loop[count.index].expiration_duration
  open_violation_on_expiration   = var.alert_loop[count.index].open_violation_on_expiration
  close_violations_on_expiration = var.alert_loop[count.index].close_violations_on_expiration
  slide_by                       = var.alert_loop[count.index].slide_by


  nrql {
    query = var.alert_loop[count.index].nrql
  }

  critical {
    operator              = var.alert_loop[count.index].critical.operator
    threshold             = var.alert_loop[count.index].critical.threshold
    threshold_duration    = var.alert_loop[count.index].critical.threshold_duration
    threshold_occurrences = var.alert_loop[count.index].critical.threshold_occurrences
  }

  warning {
    operator              = var.alert_loop[count.index].warning.operator
    threshold             = var.alert_loop[count.index].warning.threshold
    threshold_duration    = var.alert_loop[count.index].warning.threshold_duration
    threshold_occurrences = var.alert_loop[count.index].warning.threshold_occurrences
  }
}