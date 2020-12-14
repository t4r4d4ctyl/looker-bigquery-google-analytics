connection: "tk__bigquery__google_analytics"

# include all the views
include: "/views/**/*.view"

# datagroup: tk_google_analytics_default_datagroup {
#   # sql_trigger: SELECT MAX(id) FROM etl_log;;
#   max_cache_age: "1 hour"
# }

# persist_with: tk_google_analytics_default_datagroup

explore: google_analytics__view {}

## Experiment to create pivot table showing sessions by channel by date
# explore: +google_analytics__view {
#   aggregate_table: rollup__channel_grouping__date {
#     query: {
#       dimensions: [channel_grouping, date]
#       measures: [sessions]
#     }

#     materialization: {
#       persist_for: "24 hours"
#     }
#   }
# }
