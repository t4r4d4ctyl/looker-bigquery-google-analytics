view: google_analytics__view {
  sql_table_name: `training-project-259900.ga_sample_copy.google_analytics__view`
    ;;

  measure: users {
    type:  count_distinct
    sql: ${full_visitor_id} ;;
  }

  measure: sessions {
    type:  count_distinct
    sql: ${session_id} ;;
  }

  dimension: session_id {
    type: string
    hidden: yes
    sql: ${full_visitor_id} || ${visit_id} ;;
  }

## Below here is auto generated for the most part

  dimension: channel_grouping {
    type: string
    sql: ${TABLE}.channelGrouping ;;
  }

  dimension: client_id {
    type: string
    sql: ${TABLE}.clientId ;;
  }

  dimension: custom_dimensions {
    hidden: yes
    sql: ${TABLE}.customDimensions ;;
  }

  dimension: date {
    type: date ## Updated to date type, was string
    sql: PARSE_DATE("%Y%m%d", ${TABLE}.date) ;; ## Added PARSE_DATE to convert to date
  }

  dimension: device {
    hidden: yes
    sql: ${TABLE}.device ;;
  }

  dimension: full_visitor_id {
    type: string
    sql: ${TABLE}.fullVisitorId ;;
  }

  dimension: geo_network {
    hidden: yes
    sql: ${TABLE}.geoNetwork ;;
  }

  dimension: hits {
    hidden: yes
    sql: ${TABLE}.hits ;;
  }

  dimension: social_engagement_type {
    type: string
    sql: ${TABLE}.socialEngagementType ;;
  }

  dimension: totals {
    hidden: yes
    sql: ${TABLE}.totals ;;
  }

  dimension: traffic_source {
    hidden: yes
    sql: ${TABLE}.trafficSource ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.userId ;;
  }

  dimension: visit_id {
    type: number
    sql: ${TABLE}.visitId ;;
  }

  dimension: visit_number {
    type: number
    sql: ${TABLE}.visitNumber ;;
  }

  dimension: visit_start_time {
    type: number
    sql: ${TABLE}.visitStartTime ;;
  }

  dimension: visitor_id {
    type: number
    sql: ${TABLE}.visitorId ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

view: google_analytics__view__custom_dimensions {
  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: google_analytics__view__totals {
  dimension: bounces {
    type: number
    sql: ${TABLE}.bounces ;;
  }

  dimension: hits {
    type: number
    sql: ${TABLE}.hits ;;
  }

  dimension: new_visits {
    type: number
    sql: ${TABLE}.newVisits ;;
  }

  dimension: pageviews {
    type: number
    sql: ${TABLE}.pageviews ;;
  }

  dimension: screenviews {
    type: number
    sql: ${TABLE}.screenviews ;;
  }

  dimension: session_quality_dim {
    type: number
    sql: ${TABLE}.sessionQualityDim ;;
  }

  dimension: time_on_screen {
    type: number
    sql: ${TABLE}.timeOnScreen ;;
  }

  dimension: time_on_site {
    type: number
    sql: ${TABLE}.timeOnSite ;;
  }

  dimension: total_transaction_revenue {
    type: number
    sql: ${TABLE}.totalTransactionRevenue ;;
  }

  dimension: transaction_revenue {
    type: number
    sql: ${TABLE}.transactionRevenue ;;
  }

  dimension: transactions {
    type: number
    sql: ${TABLE}.transactions ;;
  }

  dimension: unique_screenviews {
    type: number
    sql: ${TABLE}.uniqueScreenviews ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}.visits ;;
  }
}

view: google_analytics__view__hits__publisher_infos {
  dimension: ads_clicked {
    type: number
    sql: ${TABLE}.adsClicked ;;
  }

  dimension: ads_pages_viewed {
    type: number
    sql: ${TABLE}.adsPagesViewed ;;
  }

  dimension: ads_revenue {
    type: number
    sql: ${TABLE}.adsRevenue ;;
  }

  dimension: ads_units_matched {
    type: number
    sql: ${TABLE}.adsUnitsMatched ;;
  }

  dimension: ads_units_viewed {
    type: number
    sql: ${TABLE}.adsUnitsViewed ;;
  }

  dimension: ads_viewed {
    type: number
    sql: ${TABLE}.adsViewed ;;
  }

  dimension: adsense_backfill_dfp_clicks {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpClicks ;;
  }

  dimension: adsense_backfill_dfp_impressions {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpImpressions ;;
  }

  dimension: adsense_backfill_dfp_matched_queries {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpMatchedQueries ;;
  }

  dimension: adsense_backfill_dfp_measurable_impressions {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpMeasurableImpressions ;;
  }

  dimension: adsense_backfill_dfp_pages_viewed {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpPagesViewed ;;
  }

  dimension: adsense_backfill_dfp_queries {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpQueries ;;
  }

  dimension: adsense_backfill_dfp_revenue_cpc {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpRevenueCpc ;;
  }

  dimension: adsense_backfill_dfp_revenue_cpm {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpRevenueCpm ;;
  }

  dimension: adsense_backfill_dfp_viewable_impressions {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpViewableImpressions ;;
  }

  dimension: adx_backfill_dfp_clicks {
    type: number
    sql: ${TABLE}.adxBackfillDfpClicks ;;
  }

  dimension: adx_backfill_dfp_impressions {
    type: number
    sql: ${TABLE}.adxBackfillDfpImpressions ;;
  }

  dimension: adx_backfill_dfp_matched_queries {
    type: number
    sql: ${TABLE}.adxBackfillDfpMatchedQueries ;;
  }

  dimension: adx_backfill_dfp_measurable_impressions {
    type: number
    sql: ${TABLE}.adxBackfillDfpMeasurableImpressions ;;
  }

  dimension: adx_backfill_dfp_pages_viewed {
    type: number
    sql: ${TABLE}.adxBackfillDfpPagesViewed ;;
  }

  dimension: adx_backfill_dfp_queries {
    type: number
    sql: ${TABLE}.adxBackfillDfpQueries ;;
  }

  dimension: adx_backfill_dfp_revenue_cpc {
    type: number
    sql: ${TABLE}.adxBackfillDfpRevenueCpc ;;
  }

  dimension: adx_backfill_dfp_revenue_cpm {
    type: number
    sql: ${TABLE}.adxBackfillDfpRevenueCpm ;;
  }

  dimension: adx_backfill_dfp_viewable_impressions {
    type: number
    sql: ${TABLE}.adxBackfillDfpViewableImpressions ;;
  }

  dimension: adx_clicks {
    type: number
    sql: ${TABLE}.adxClicks ;;
  }

  dimension: adx_impressions {
    type: number
    sql: ${TABLE}.adxImpressions ;;
  }

  dimension: adx_matched_queries {
    type: number
    sql: ${TABLE}.adxMatchedQueries ;;
  }

  dimension: adx_measurable_impressions {
    type: number
    sql: ${TABLE}.adxMeasurableImpressions ;;
  }

  dimension: adx_pages_viewed {
    type: number
    sql: ${TABLE}.adxPagesViewed ;;
  }

  dimension: adx_queries {
    type: number
    sql: ${TABLE}.adxQueries ;;
  }

  dimension: adx_revenue {
    type: number
    sql: ${TABLE}.adxRevenue ;;
  }

  dimension: adx_viewable_impressions {
    type: number
    sql: ${TABLE}.adxViewableImpressions ;;
  }

  dimension: dfp_ad_group {
    type: string
    sql: ${TABLE}.dfpAdGroup ;;
  }

  dimension: dfp_ad_units {
    type: string
    sql: ${TABLE}.dfpAdUnits ;;
  }

  dimension: dfp_clicks {
    type: number
    sql: ${TABLE}.dfpClicks ;;
  }

  dimension: dfp_impressions {
    type: number
    sql: ${TABLE}.dfpImpressions ;;
  }

  dimension: dfp_matched_queries {
    type: number
    sql: ${TABLE}.dfpMatchedQueries ;;
  }

  dimension: dfp_measurable_impressions {
    type: number
    sql: ${TABLE}.dfpMeasurableImpressions ;;
  }

  dimension: dfp_network_id {
    type: string
    sql: ${TABLE}.dfpNetworkId ;;
  }

  dimension: dfp_pages_viewed {
    type: number
    sql: ${TABLE}.dfpPagesViewed ;;
  }

  dimension: dfp_queries {
    type: number
    sql: ${TABLE}.dfpQueries ;;
  }

  dimension: dfp_revenue_cpc {
    type: number
    sql: ${TABLE}.dfpRevenueCpc ;;
  }

  dimension: dfp_revenue_cpm {
    type: number
    sql: ${TABLE}.dfpRevenueCpm ;;
  }

  dimension: dfp_viewable_impressions {
    type: number
    sql: ${TABLE}.dfpViewableImpressions ;;
  }

  dimension: measurable_ads_viewed {
    type: number
    sql: ${TABLE}.measurableAdsViewed ;;
  }

  dimension: viewable_ads_viewed {
    type: number
    sql: ${TABLE}.viewableAdsViewed ;;
  }
}

view: google_analytics__view__hits {
  dimension: app_info {
    hidden: yes
    sql: ${TABLE}.appInfo ;;
  }

  dimension: content_group {
    hidden: yes
    sql: ${TABLE}.contentGroup ;;
  }

  dimension: content_info {
    hidden: yes
    sql: ${TABLE}.contentInfo ;;
  }

  dimension: custom_dimensions {
    hidden: yes
    sql: ${TABLE}.customDimensions ;;
  }

  dimension: custom_metrics {
    hidden: yes
    sql: ${TABLE}.customMetrics ;;
  }

  dimension: custom_variables {
    hidden: yes
    sql: ${TABLE}.customVariables ;;
  }

  dimension: data_source {
    type: string
    sql: ${TABLE}.dataSource ;;
  }

  dimension: e_commerce_action {
    hidden: yes
    sql: ${TABLE}.eCommerceAction ;;
  }

  dimension: event_info {
    hidden: yes
    sql: ${TABLE}.eventInfo ;;
  }

  dimension: exception_info {
    hidden: yes
    sql: ${TABLE}.exceptionInfo ;;
  }

  dimension: experiment {
    hidden: yes
    sql: ${TABLE}.experiment ;;
  }

  dimension: hit_number {
    type: number
    sql: ${TABLE}.hitNumber ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension: is_entrance {
    type: yesno
    sql: ${TABLE}.isEntrance ;;
  }

  dimension: is_exit {
    type: yesno
    sql: ${TABLE}.isExit ;;
  }

  dimension: is_interaction {
    type: yesno
    sql: ${TABLE}.isInteraction ;;
  }

  dimension: is_secure {
    type: yesno
    sql: ${TABLE}.isSecure ;;
  }

  dimension: item {
    hidden: yes
    sql: ${TABLE}.item ;;
  }

  dimension: latency_tracking {
    hidden: yes
    sql: ${TABLE}.latencyTracking ;;
  }

  dimension: minute {
    type: number
    sql: ${TABLE}.minute ;;
  }

  dimension: page {
    hidden: yes
    sql: ${TABLE}.page ;;
  }

  dimension: product {
    hidden: yes
    sql: ${TABLE}.product ;;
  }

  dimension: promotion {
    hidden: yes
    sql: ${TABLE}.promotion ;;
  }

  dimension: promotion_action_info {
    hidden: yes
    sql: ${TABLE}.promotionActionInfo ;;
  }

  dimension: publisher {
    hidden: yes
    sql: ${TABLE}.publisher ;;
  }

  dimension: publisher_infos {
    hidden: yes
    sql: ${TABLE}.publisher_infos ;;
  }

  dimension: referer {
    type: string
    sql: ${TABLE}.referer ;;
  }

  dimension: refund {
    hidden: yes
    sql: ${TABLE}.refund ;;
  }

  dimension: social {
    hidden: yes
    sql: ${TABLE}.social ;;
  }

  dimension: source_property_info {
    hidden: yes
    sql: ${TABLE}.sourcePropertyInfo ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }

  dimension: transaction {
    hidden: yes
    sql: ${TABLE}.transaction ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: google_analytics__view__hits__custom_dimensions {
  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: google_analytics__view__hits__app_info {
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: app_id {
    type: string
    sql: ${TABLE}.appId ;;
  }

  dimension: app_installer_id {
    type: string
    sql: ${TABLE}.appInstallerId ;;
  }

  dimension: app_name {
    type: string
    sql: ${TABLE}.appName ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.appVersion ;;
  }

  dimension: exit_screen_name {
    type: string
    sql: ${TABLE}.exitScreenName ;;
  }

  dimension: installer_id {
    type: string
    sql: ${TABLE}.installerId ;;
  }

  dimension: landing_screen_name {
    type: string
    sql: ${TABLE}.landingScreenName ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: screen_depth {
    type: string
    sql: ${TABLE}.screenDepth ;;
  }

  dimension: screen_name {
    type: string
    sql: ${TABLE}.screenName ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: google_analytics__view__hits__content_group {
  dimension: content_group1 {
    type: string
    sql: ${TABLE}.contentGroup1 ;;
  }

  dimension: content_group2 {
    type: string
    sql: ${TABLE}.contentGroup2 ;;
  }

  dimension: content_group3 {
    type: string
    sql: ${TABLE}.contentGroup3 ;;
  }

  dimension: content_group4 {
    type: string
    sql: ${TABLE}.contentGroup4 ;;
  }

  dimension: content_group5 {
    type: string
    sql: ${TABLE}.contentGroup5 ;;
  }

  dimension: content_group_unique_views1 {
    type: number
    sql: ${TABLE}.contentGroupUniqueViews1 ;;
  }

  dimension: content_group_unique_views2 {
    type: number
    sql: ${TABLE}.contentGroupUniqueViews2 ;;
  }

  dimension: content_group_unique_views3 {
    type: number
    sql: ${TABLE}.contentGroupUniqueViews3 ;;
  }

  dimension: content_group_unique_views4 {
    type: number
    sql: ${TABLE}.contentGroupUniqueViews4 ;;
  }

  dimension: content_group_unique_views5 {
    type: number
    sql: ${TABLE}.contentGroupUniqueViews5 ;;
  }

  dimension: previous_content_group1 {
    type: string
    sql: ${TABLE}.previousContentGroup1 ;;
  }

  dimension: previous_content_group2 {
    type: string
    sql: ${TABLE}.previousContentGroup2 ;;
  }

  dimension: previous_content_group3 {
    type: string
    sql: ${TABLE}.previousContentGroup3 ;;
  }

  dimension: previous_content_group4 {
    type: string
    sql: ${TABLE}.previousContentGroup4 ;;
  }

  dimension: previous_content_group5 {
    type: string
    sql: ${TABLE}.previousContentGroup5 ;;
  }
}

view: google_analytics__view__hits__content_info {
  dimension: content_description {
    type: string
    sql: ${TABLE}.contentDescription ;;
  }
}

view: google_analytics__view__hits__custom_variables {
  dimension: custom_var_name {
    type: string
    sql: ${TABLE}.customVarName ;;
  }

  dimension: custom_var_value {
    type: string
    sql: ${TABLE}.customVarValue ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }
}

view: google_analytics__view__hits__custom_metrics {
  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: google_analytics__view__hits__experiment {
  dimension: experiment_id {
    type: string
    sql: ${TABLE}.experimentId ;;
  }

  dimension: experiment_variant {
    type: string
    sql: ${TABLE}.experimentVariant ;;
  }
}

view: google_analytics__view__hits__e_commerce_action {
  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: option {
    type: string
    sql: ${TABLE}.option ;;
  }

  dimension: step {
    type: number
    sql: ${TABLE}.step ;;
  }
}

view: google_analytics__view__hits__promotion_action_info {
  dimension: promo_is_click {
    type: yesno
    sql: ${TABLE}.promoIsClick ;;
  }

  dimension: promo_is_view {
    type: yesno
    sql: ${TABLE}.promoIsView ;;
  }
}

view: google_analytics__view__hits__source_property_info {
  dimension: source_property_display_name {
    type: string
    sql: ${TABLE}.sourcePropertyDisplayName ;;
  }

  dimension: source_property_tracking_id {
    type: string
    sql: ${TABLE}.sourcePropertyTrackingId ;;
  }
}

view: google_analytics__view__hits__item {
  dimension: currency_code {
    type: string
    sql: ${TABLE}.currencyCode ;;
  }

  dimension: item_quantity {
    type: number
    sql: ${TABLE}.itemQuantity ;;
  }

  dimension: item_revenue {
    type: number
    sql: ${TABLE}.itemRevenue ;;
  }

  dimension: local_item_revenue {
    type: number
    sql: ${TABLE}.localItemRevenue ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.productCategory ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.productName ;;
  }

  dimension: product_sku {
    type: string
    sql: ${TABLE}.productSku ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transactionId ;;
  }
}

view: google_analytics__view__hits__product {
  dimension: custom_dimensions {
    hidden: yes
    sql: ${TABLE}.customDimensions ;;
  }

  dimension: custom_metrics {
    hidden: yes
    sql: ${TABLE}.customMetrics ;;
  }

  dimension: is_click {
    type: yesno
    sql: ${TABLE}.isClick ;;
  }

  dimension: is_impression {
    type: yesno
    sql: ${TABLE}.isImpression ;;
  }

  dimension: local_product_price {
    type: number
    sql: ${TABLE}.localProductPrice ;;
  }

  dimension: local_product_refund_amount {
    type: number
    sql: ${TABLE}.localProductRefundAmount ;;
  }

  dimension: local_product_revenue {
    type: number
    sql: ${TABLE}.localProductRevenue ;;
  }

  dimension: product_brand {
    type: string
    sql: ${TABLE}.productBrand ;;
  }

  dimension: product_coupon_code {
    type: string
    sql: ${TABLE}.productCouponCode ;;
  }

  dimension: product_list_name {
    type: string
    sql: ${TABLE}.productListName ;;
  }

  dimension: product_list_position {
    type: number
    sql: ${TABLE}.productListPosition ;;
  }

  dimension: product_price {
    type: number
    sql: ${TABLE}.productPrice ;;
  }

  dimension: product_quantity {
    type: number
    sql: ${TABLE}.productQuantity ;;
  }

  dimension: product_refund_amount {
    type: number
    sql: ${TABLE}.productRefundAmount ;;
  }

  dimension: product_revenue {
    type: number
    sql: ${TABLE}.productRevenue ;;
  }

  dimension: product_sku {
    type: string
    sql: ${TABLE}.productSKU ;;
  }

  dimension: product_variant {
    type: string
    sql: ${TABLE}.productVariant ;;
  }

  dimension: v2_product_category {
    type: string
    sql: ${TABLE}.v2ProductCategory ;;
  }

  dimension: v2_product_name {
    type: string
    sql: ${TABLE}.v2ProductName ;;
  }
}

view: google_analytics__view__hits__product__custom_dimensions {
  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

view: google_analytics__view__hits__product__custom_metrics {
  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: google_analytics__view__hits__social {
  dimension: has_social_source_referral {
    type: string
    sql: ${TABLE}.hasSocialSourceReferral ;;
  }

  dimension: social_interaction_action {
    type: string
    sql: ${TABLE}.socialInteractionAction ;;
  }

  dimension: social_interaction_network {
    type: string
    sql: ${TABLE}.socialInteractionNetwork ;;
  }

  dimension: social_interaction_network_action {
    type: string
    sql: ${TABLE}.socialInteractionNetworkAction ;;
  }

  dimension: social_interaction_target {
    type: string
    sql: ${TABLE}.socialInteractionTarget ;;
  }

  dimension: social_interactions {
    type: number
    sql: ${TABLE}.socialInteractions ;;
  }

  dimension: social_network {
    type: string
    sql: ${TABLE}.socialNetwork ;;
  }

  dimension: unique_social_interactions {
    type: number
    sql: ${TABLE}.uniqueSocialInteractions ;;
  }
}

view: google_analytics__view__hits__event_info {
  dimension: event_action {
    type: string
    sql: ${TABLE}.eventAction ;;
  }

  dimension: event_category {
    type: string
    sql: ${TABLE}.eventCategory ;;
  }

  dimension: event_label {
    type: string
    sql: ${TABLE}.eventLabel ;;
  }

  dimension: event_value {
    type: number
    sql: ${TABLE}.eventValue ;;
  }
}

view: google_analytics__view__hits__latency_tracking {
  dimension: dom_content_loaded_time {
    type: number
    sql: ${TABLE}.domContentLoadedTime ;;
  }

  dimension: dom_interactive_time {
    type: number
    sql: ${TABLE}.domInteractiveTime ;;
  }

  dimension: dom_latency_metrics_sample {
    type: number
    sql: ${TABLE}.domLatencyMetricsSample ;;
  }

  dimension: domain_lookup_time {
    type: number
    sql: ${TABLE}.domainLookupTime ;;
  }

  dimension: page_download_time {
    type: number
    sql: ${TABLE}.pageDownloadTime ;;
  }

  dimension: page_load_sample {
    type: number
    sql: ${TABLE}.pageLoadSample ;;
  }

  dimension: page_load_time {
    type: number
    sql: ${TABLE}.pageLoadTime ;;
  }

  dimension: redirection_time {
    type: number
    sql: ${TABLE}.redirectionTime ;;
  }

  dimension: server_connection_time {
    type: number
    sql: ${TABLE}.serverConnectionTime ;;
  }

  dimension: server_response_time {
    type: number
    sql: ${TABLE}.serverResponseTime ;;
  }

  dimension: speed_metrics_sample {
    type: number
    sql: ${TABLE}.speedMetricsSample ;;
  }

  dimension: user_timing_category {
    type: string
    sql: ${TABLE}.userTimingCategory ;;
  }

  dimension: user_timing_label {
    type: string
    sql: ${TABLE}.userTimingLabel ;;
  }

  dimension: user_timing_sample {
    type: number
    sql: ${TABLE}.userTimingSample ;;
  }

  dimension: user_timing_value {
    type: number
    sql: ${TABLE}.userTimingValue ;;
  }

  dimension: user_timing_variable {
    type: string
    sql: ${TABLE}.userTimingVariable ;;
  }
}

view: google_analytics__view__hits__publisher {
  dimension: ads_clicked {
    type: number
    sql: ${TABLE}.adsClicked ;;
  }

  dimension: ads_pages_viewed {
    type: number
    sql: ${TABLE}.adsPagesViewed ;;
  }

  dimension: ads_revenue {
    type: number
    sql: ${TABLE}.adsRevenue ;;
  }

  dimension: ads_units_matched {
    type: number
    sql: ${TABLE}.adsUnitsMatched ;;
  }

  dimension: ads_units_viewed {
    type: number
    sql: ${TABLE}.adsUnitsViewed ;;
  }

  dimension: ads_viewed {
    type: number
    sql: ${TABLE}.adsViewed ;;
  }

  dimension: adsense_backfill_dfp_clicks {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpClicks ;;
  }

  dimension: adsense_backfill_dfp_impressions {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpImpressions ;;
  }

  dimension: adsense_backfill_dfp_matched_queries {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpMatchedQueries ;;
  }

  dimension: adsense_backfill_dfp_measurable_impressions {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpMeasurableImpressions ;;
  }

  dimension: adsense_backfill_dfp_pages_viewed {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpPagesViewed ;;
  }

  dimension: adsense_backfill_dfp_queries {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpQueries ;;
  }

  dimension: adsense_backfill_dfp_revenue_cpc {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpRevenueCpc ;;
  }

  dimension: adsense_backfill_dfp_revenue_cpm {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpRevenueCpm ;;
  }

  dimension: adsense_backfill_dfp_viewable_impressions {
    type: number
    sql: ${TABLE}.adsenseBackfillDfpViewableImpressions ;;
  }

  dimension: adx_backfill_dfp_clicks {
    type: number
    sql: ${TABLE}.adxBackfillDfpClicks ;;
  }

  dimension: adx_backfill_dfp_impressions {
    type: number
    sql: ${TABLE}.adxBackfillDfpImpressions ;;
  }

  dimension: adx_backfill_dfp_matched_queries {
    type: number
    sql: ${TABLE}.adxBackfillDfpMatchedQueries ;;
  }

  dimension: adx_backfill_dfp_measurable_impressions {
    type: number
    sql: ${TABLE}.adxBackfillDfpMeasurableImpressions ;;
  }

  dimension: adx_backfill_dfp_pages_viewed {
    type: number
    sql: ${TABLE}.adxBackfillDfpPagesViewed ;;
  }

  dimension: adx_backfill_dfp_queries {
    type: number
    sql: ${TABLE}.adxBackfillDfpQueries ;;
  }

  dimension: adx_backfill_dfp_revenue_cpc {
    type: number
    sql: ${TABLE}.adxBackfillDfpRevenueCpc ;;
  }

  dimension: adx_backfill_dfp_revenue_cpm {
    type: number
    sql: ${TABLE}.adxBackfillDfpRevenueCpm ;;
  }

  dimension: adx_backfill_dfp_viewable_impressions {
    type: number
    sql: ${TABLE}.adxBackfillDfpViewableImpressions ;;
  }

  dimension: adx_clicks {
    type: number
    sql: ${TABLE}.adxClicks ;;
  }

  dimension: adx_impressions {
    type: number
    sql: ${TABLE}.adxImpressions ;;
  }

  dimension: adx_matched_queries {
    type: number
    sql: ${TABLE}.adxMatchedQueries ;;
  }

  dimension: adx_measurable_impressions {
    type: number
    sql: ${TABLE}.adxMeasurableImpressions ;;
  }

  dimension: adx_pages_viewed {
    type: number
    sql: ${TABLE}.adxPagesViewed ;;
  }

  dimension: adx_queries {
    type: number
    sql: ${TABLE}.adxQueries ;;
  }

  dimension: adx_revenue {
    type: number
    sql: ${TABLE}.adxRevenue ;;
  }

  dimension: adx_viewable_impressions {
    type: number
    sql: ${TABLE}.adxViewableImpressions ;;
  }

  dimension: dfp_ad_group {
    type: string
    sql: ${TABLE}.dfpAdGroup ;;
  }

  dimension: dfp_ad_units {
    type: string
    sql: ${TABLE}.dfpAdUnits ;;
  }

  dimension: dfp_clicks {
    type: number
    sql: ${TABLE}.dfpClicks ;;
  }

  dimension: dfp_impressions {
    type: number
    sql: ${TABLE}.dfpImpressions ;;
  }

  dimension: dfp_matched_queries {
    type: number
    sql: ${TABLE}.dfpMatchedQueries ;;
  }

  dimension: dfp_measurable_impressions {
    type: number
    sql: ${TABLE}.dfpMeasurableImpressions ;;
  }

  dimension: dfp_network_id {
    type: string
    sql: ${TABLE}.dfpNetworkId ;;
  }

  dimension: dfp_pages_viewed {
    type: number
    sql: ${TABLE}.dfpPagesViewed ;;
  }

  dimension: dfp_queries {
    type: number
    sql: ${TABLE}.dfpQueries ;;
  }

  dimension: dfp_revenue_cpc {
    type: number
    sql: ${TABLE}.dfpRevenueCpc ;;
  }

  dimension: dfp_revenue_cpm {
    type: number
    sql: ${TABLE}.dfpRevenueCpm ;;
  }

  dimension: dfp_viewable_impressions {
    type: number
    sql: ${TABLE}.dfpViewableImpressions ;;
  }

  dimension: measurable_ads_viewed {
    type: number
    sql: ${TABLE}.measurableAdsViewed ;;
  }

  dimension: viewable_ads_viewed {
    type: number
    sql: ${TABLE}.viewableAdsViewed ;;
  }
}

view: google_analytics__view__hits__page {
  dimension: hostname {
    type: string
    sql: ${TABLE}.hostname ;;
  }

  dimension: page_path {
    type: string
    sql: ${TABLE}.pagePath ;;
  }

  dimension: page_path_level1 {
    type: string
    sql: ${TABLE}.pagePathLevel1 ;;
  }

  dimension: page_path_level2 {
    type: string
    sql: ${TABLE}.pagePathLevel2 ;;
  }

  dimension: page_path_level3 {
    type: string
    sql: ${TABLE}.pagePathLevel3 ;;
  }

  dimension: page_path_level4 {
    type: string
    sql: ${TABLE}.pagePathLevel4 ;;
  }

  dimension: page_title {
    type: string
    sql: ${TABLE}.pageTitle ;;
  }

  dimension: search_category {
    type: string
    sql: ${TABLE}.searchCategory ;;
  }

  dimension: search_keyword {
    type: string
    sql: ${TABLE}.searchKeyword ;;
  }
}

view: google_analytics__view__hits__transaction {
  dimension: affiliation {
    type: string
    sql: ${TABLE}.affiliation ;;
  }

  dimension: currency_code {
    type: string
    sql: ${TABLE}.currencyCode ;;
  }

  dimension: local_transaction_revenue {
    type: number
    sql: ${TABLE}.localTransactionRevenue ;;
  }

  dimension: local_transaction_shipping {
    type: number
    sql: ${TABLE}.localTransactionShipping ;;
  }

  dimension: local_transaction_tax {
    type: number
    sql: ${TABLE}.localTransactionTax ;;
  }

  dimension: transaction_coupon {
    type: string
    sql: ${TABLE}.transactionCoupon ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transactionId ;;
  }

  dimension: transaction_revenue {
    type: number
    sql: ${TABLE}.transactionRevenue ;;
  }

  dimension: transaction_shipping {
    type: number
    sql: ${TABLE}.transactionShipping ;;
  }

  dimension: transaction_tax {
    type: number
    sql: ${TABLE}.transactionTax ;;
  }
}

view: google_analytics__view__hits__exception_info {
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: exceptions {
    type: number
    sql: ${TABLE}.exceptions ;;
  }

  dimension: fatal_exceptions {
    type: number
    sql: ${TABLE}.fatalExceptions ;;
  }

  dimension: is_fatal {
    type: yesno
    sql: ${TABLE}.isFatal ;;
  }
}

view: google_analytics__view__hits__promotion {
  dimension: promo_creative {
    type: string
    sql: ${TABLE}.promoCreative ;;
  }

  dimension: promo_id {
    type: string
    sql: ${TABLE}.promoId ;;
  }

  dimension: promo_name {
    type: string
    sql: ${TABLE}.promoName ;;
  }

  dimension: promo_position {
    type: string
    sql: ${TABLE}.promoPosition ;;
  }
}

view: google_analytics__view__hits__refund {
  dimension: local_refund_amount {
    type: number
    sql: ${TABLE}.localRefundAmount ;;
  }

  dimension: refund_amount {
    type: number
    sql: ${TABLE}.refundAmount ;;
  }
}

view: google_analytics__view__geo_network {
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: city_id {
    type: string
    sql: ${TABLE}.cityId ;;
  }

  dimension: continent {
    type: string
    sql: ${TABLE}.continent ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: metro {
    type: string
    sql: ${TABLE}.metro ;;
  }

  dimension: network_domain {
    type: string
    sql: ${TABLE}.networkDomain ;;
  }

  dimension: network_location {
    type: string
    sql: ${TABLE}.networkLocation ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sub_continent {
    type: string
    sql: ${TABLE}.subContinent ;;
  }
}

view: google_analytics__view__traffic_source {
  dimension: ad_content {
    type: string
    sql: ${TABLE}.adContent ;;
  }

  dimension: adwords_click_info {
    hidden: yes
    sql: ${TABLE}.adwordsClickInfo ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: campaign_code {
    type: string
    sql: ${TABLE}.campaignCode ;;
  }

  dimension: is_true_direct {
    type: yesno
    sql: ${TABLE}.isTrueDirect ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}.keyword ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: referral_path {
    type: string
    sql: ${TABLE}.referralPath ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
}

view: google_analytics__view__traffic_source__adwords_click_info {
  dimension: ad_group_id {
    type: number
    sql: ${TABLE}.adGroupId ;;
  }

  dimension: ad_network_type {
    type: string
    sql: ${TABLE}.adNetworkType ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaignId ;;
  }

  dimension: creative_id {
    type: number
    sql: ${TABLE}.creativeId ;;
  }

  dimension: criteria_id {
    type: number
    sql: ${TABLE}.criteriaId ;;
  }

  dimension: criteria_parameters {
    type: string
    sql: ${TABLE}.criteriaParameters ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customerId ;;
  }

  dimension: gcl_id {
    type: string
    sql: ${TABLE}.gclId ;;
  }

  dimension: is_video_ad {
    type: yesno
    sql: ${TABLE}.isVideoAd ;;
  }

  dimension: page {
    type: number
    sql: ${TABLE}.page ;;
  }

  dimension: slot {
    type: string
    sql: ${TABLE}.slot ;;
  }

  dimension: targeting_criteria {
    hidden: yes
    sql: ${TABLE}.targetingCriteria ;;
  }
}

view: google_analytics__view__traffic_source__adwords_click_info__targeting_criteria {
  dimension: boom_userlist_id {
    type: number
    sql: ${TABLE}.boomUserlistId ;;
  }
}

view: google_analytics__view__device {
  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
  }

  dimension: browser_size {
    type: string
    sql: ${TABLE}.browserSize ;;
  }

  dimension: browser_version {
    type: string
    sql: ${TABLE}.browserVersion ;;
  }

  dimension: device_category {
    type: string
    sql: ${TABLE}.deviceCategory ;;
  }

  dimension: flash_version {
    type: string
    sql: ${TABLE}.flashVersion ;;
  }

  dimension: is_mobile {
    type: yesno
    sql: ${TABLE}.isMobile ;;
  }

  dimension: java_enabled {
    type: yesno
    sql: ${TABLE}.javaEnabled ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: mobile_device_branding {
    type: string
    sql: ${TABLE}.mobileDeviceBranding ;;
  }

  dimension: mobile_device_info {
    type: string
    sql: ${TABLE}.mobileDeviceInfo ;;
  }

  dimension: mobile_device_marketing_name {
    type: string
    sql: ${TABLE}.mobileDeviceMarketingName ;;
  }

  dimension: mobile_device_model {
    type: string
    sql: ${TABLE}.mobileDeviceModel ;;
  }

  dimension: mobile_input_selector {
    type: string
    sql: ${TABLE}.mobileInputSelector ;;
  }

  dimension: operating_system {
    type: string
    sql: ${TABLE}.operatingSystem ;;
  }

  dimension: operating_system_version {
    type: string
    sql: ${TABLE}.operatingSystemVersion ;;
  }

  dimension: screen_colors {
    type: string
    sql: ${TABLE}.screenColors ;;
  }

  dimension: screen_resolution {
    type: string
    sql: ${TABLE}.screenResolution ;;
  }
}
