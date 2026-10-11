resource "elasticstack_fleet_elastic_defend_integration_policy" "fleet_elastic_defend_integration_policies" {
  for_each = var.fleet_elastic_defend_integration_policies

  integration_version = each.value.integration_version
  name                = each.value.name
  namespace           = each.value.namespace
  policy              = each.value.policy
  advanced_settings   = each.value.advanced_settings
  agent_policy_id     = each.value.agent_policy_id
  agent_policy_ids    = each.value.agent_policy_ids
  description         = each.value.description
  enabled             = each.value.enabled
  force               = each.value.force
  policy_id           = each.value.policy_id
  preset              = each.value.preset
  space_ids           = each.value.space_ids

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

