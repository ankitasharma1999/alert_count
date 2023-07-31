condition = {

  "first" = {
    "account_id"                     = 4043843
    "policy_id"                      = "newrelic_alert_policy.foo.id"
    "type"                           = "static"
    "name"                           = "foo"
    "description"                    = "Alert when transactions are taking too long"
    "runbook_url"                    = "https://www.example.com"
    "enabled"                        = true
    "violation_time_limit_seconds"   = 3000
    "fill_option"                    = "static"
    "fill_value"                     = 2.0
    "aggregation_window"             = 70
    "aggregation_method"             = "event_flow"
    "aggregation_delay"              = 100
    "expiration_duration"            = 100
    "open_violation_on_expiration"   = true
    "close_violations_on_expiration" = true
    "slide_by"                       = 50
    "baseline_direction"             = "upper_only"
    "operator"                       = "above"
    "threshold"                      = 6.5
    "threshold_duration"             = 300
    "threshold_occurrences"          = "ALL"
    "operator"                       = "above"
    "threshold"                      = 5.5
    "threshold_duration"             = 500
    "threshold_occurrences"          = "ALL"
    "query"                          = "SELECT count(*) FROM Transaction WHERE appname= 'FoodMe'"


  }



  "second" = {
    "account_id"                     = 4043843
    "policy_id"                      = "newrelic_alert_policy.foo.id"
    "type"                           = "static"
    "name"                           = "foo"
    "description"                    = "Alert when transactions are taking too long"
    "runbook_url"                    = "https://www.example.com"
    "enabled"                        = true
    "violation_time_limit_seconds"   = 3600
    "fill_option"                    = "static"
    "fill_value"                     = 1.5
    "aggregation_window"             = 65
    "aggregation_method"             = "event_flow"
    "aggregation_delay"              = 220
    "expiration_duration"            = 220
    "open_violation_on_expiration"   = true
    "close_violations_on_expiration" = true
    "slide_by"                       = 35
    "baseline_direction"             = "upper_only"
    "operator"                       = "above"
    "threshold"                      = 5.5
    "threshold_duration"             = 360
    "threshold_occurrences"          = "ALL"
    "operator"                       = "above"
    "threshold"                      = 3.5
    "threshold_duration"             = 650
    "threshold_occurrences"          = "ALL"
    "query"                          = "SELECT count(*) FROM Transaction WHERE appname= 'FoodMe'"
  }





  "third" = {
    "account_id"                     = 4043843
    "policy_id"                      = "newrelic_alert_policy.foo.id"
    "type"                           = "static"
    "name"                           = "foo"
    "description"                    = "Alert when transactions are taking too long"
    "runbook_url"                    = "https://www.example.com"
    "enabled"                        = true
    "violation_time_limit_seconds"   = 3600
    "fill_option"                    = "static"
    "fill_value"                     = 1.0
    "aggregation_window"             = 60
    "aggregation_method"             = "event_flow"
    "aggregation_delay"              = 120
    "expiration_duration"            = 120
    "open_violation_on_expiration"   = true
    "close_violations_on_expiration" = true
    "slide_by"                       = 30
    "baseline_direction"             = "upper_only"
    "operator"                       = "above"
    "threshold"                      = 5.5
    "threshold_duration"             = 300
    "threshold_occurrences"          = "ALL"
    "operator"                       = "above"
    "threshold"                      = 3.5
    "threshold_duration"             = 600
    "threshold_occurrences"          = "ALL"
    "query"                          = "SELECT count(*) FROM Transaction WHERE appname= 'FoodMe'"
  }


}