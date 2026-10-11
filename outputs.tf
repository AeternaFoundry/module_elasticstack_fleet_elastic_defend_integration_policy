output "fleet_elastic_defend_integration_policies_id" {
  description = "Map of id values across all fleet_elastic_defend_integration_policies, keyed the same as var.fleet_elastic_defend_integration_policies except keys with no id are omitted"
  value       = { for k, v in elasticstack_fleet_elastic_defend_integration_policy.fleet_elastic_defend_integration_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fleet_elastic_defend_integration_policies_advanced_settings" {
  description = "Map of advanced_settings values across all fleet_elastic_defend_integration_policies, keyed the same as var.fleet_elastic_defend_integration_policies except keys with no advanced_settings are omitted"
  value       = { for k, v in elasticstack_fleet_elastic_defend_integration_policy.fleet_elastic_defend_integration_policies : k => v.advanced_settings if v.advanced_settings != null && length(v.advanced_settings) > 0 }
}
output "fleet_elastic_defend_integration_policies_agent_policy_id" {
  description = "Map of agent_policy_id values across all fleet_elastic_defend_integration_policies, keyed the same as var.fleet_elastic_defend_integration_policies except keys with no agent_policy_id are omitted"
  value       = { for k, v in elasticstack_fleet_elastic_defend_integration_policy.fleet_elastic_defend_integration_policies : k => v.agent_policy_id if v.agent_policy_id != null && length(v.agent_policy_id) > 0 }
}
output "fleet_elastic_defend_integration_policies_agent_policy_ids" {
  description = "Map of agent_policy_ids values across all fleet_elastic_defend_integration_policies, keyed the same as var.fleet_elastic_defend_integration_policies except keys with no agent_policy_ids are omitted"
  value       = { for k, v in elasticstack_fleet_elastic_defend_integration_policy.fleet_elastic_defend_integration_policies : k => v.agent_policy_ids if v.agent_policy_ids != null && length(v.agent_policy_ids) > 0 }
}
output "fleet_elastic_defend_integration_policies_description" {
  description = "Map of description values across all fleet_elastic_defend_integration_policies, keyed the same as var.fleet_elastic_defend_integration_policies except keys with no description are omitted"
  value       = { for k, v in elasticstack_fleet_elastic_defend_integration_policy.fleet_elastic_defend_integration_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "fleet_elastic_defend_integration_policies_enabled" {
  description = "Map of enabled values across all fleet_elastic_defend_integration_policies, keyed the same as var.fleet_elastic_defend_integration_policies except keys with no enabled are omitted"
  value       = { for k, v in elasticstack_fleet_elastic_defend_integration_policy.fleet_elastic_defend_integration_policies : k => v.enabled if v.enabled != null }
}
output "fleet_elastic_defend_integration_policies_force" {
  description = "Map of force values across all fleet_elastic_defend_integration_policies, keyed the same as var.fleet_elastic_defend_integration_policies except keys with no force are omitted"
  value       = { for k, v in elasticstack_fleet_elastic_defend_integration_policy.fleet_elastic_defend_integration_policies : k => v.force if v.force != null }
}
output "fleet_elastic_defend_integration_policies_integration_version" {
  description = "Map of integration_version values across all fleet_elastic_defend_integration_policies, keyed the same as var.fleet_elastic_defend_integration_policies except keys with no integration_version are omitted"
  value       = { for k, v in elasticstack_fleet_elastic_defend_integration_policy.fleet_elastic_defend_integration_policies : k => v.integration_version if v.integration_version != null && length(v.integration_version) > 0 }
}
output "fleet_elastic_defend_integration_policies_kibana_connection" {
  description = "Map of kibana_connection values across all fleet_elastic_defend_integration_policies, keyed the same as var.fleet_elastic_defend_integration_policies except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_fleet_elastic_defend_integration_policy.fleet_elastic_defend_integration_policies : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "fleet_elastic_defend_integration_policies_name" {
  description = "Map of name values across all fleet_elastic_defend_integration_policies, keyed the same as var.fleet_elastic_defend_integration_policies except keys with no name are omitted"
  value       = { for k, v in elasticstack_fleet_elastic_defend_integration_policy.fleet_elastic_defend_integration_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "fleet_elastic_defend_integration_policies_namespace" {
  description = "Map of namespace values across all fleet_elastic_defend_integration_policies, keyed the same as var.fleet_elastic_defend_integration_policies except keys with no namespace are omitted"
  value       = { for k, v in elasticstack_fleet_elastic_defend_integration_policy.fleet_elastic_defend_integration_policies : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "fleet_elastic_defend_integration_policies_policy" {
  description = "Map of policy values across all fleet_elastic_defend_integration_policies, keyed the same as var.fleet_elastic_defend_integration_policies except keys with no policy are omitted"
  value       = { for k, v in elasticstack_fleet_elastic_defend_integration_policy.fleet_elastic_defend_integration_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "fleet_elastic_defend_integration_policies_policy_id" {
  description = "Map of policy_id values across all fleet_elastic_defend_integration_policies, keyed the same as var.fleet_elastic_defend_integration_policies except keys with no policy_id are omitted"
  value       = { for k, v in elasticstack_fleet_elastic_defend_integration_policy.fleet_elastic_defend_integration_policies : k => v.policy_id if v.policy_id != null && length(v.policy_id) > 0 }
}
output "fleet_elastic_defend_integration_policies_preset" {
  description = "Map of preset values across all fleet_elastic_defend_integration_policies, keyed the same as var.fleet_elastic_defend_integration_policies except keys with no preset are omitted"
  value       = { for k, v in elasticstack_fleet_elastic_defend_integration_policy.fleet_elastic_defend_integration_policies : k => v.preset if v.preset != null && length(v.preset) > 0 }
}
output "fleet_elastic_defend_integration_policies_space_ids" {
  description = "Map of space_ids values across all fleet_elastic_defend_integration_policies, keyed the same as var.fleet_elastic_defend_integration_policies except keys with no space_ids are omitted"
  value       = { for k, v in elasticstack_fleet_elastic_defend_integration_policy.fleet_elastic_defend_integration_policies : k => v.space_ids if v.space_ids != null && length(v.space_ids) > 0 }
}

