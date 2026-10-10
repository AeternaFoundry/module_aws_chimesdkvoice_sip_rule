output "chimesdkvoice_sip_rules_id" {
  description = "Map of id values across all chimesdkvoice_sip_rules, keyed the same as var.chimesdkvoice_sip_rules"
  value       = { for k, v in aws_chimesdkvoice_sip_rule.chimesdkvoice_sip_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "chimesdkvoice_sip_rules_disabled" {
  description = "Map of disabled values across all chimesdkvoice_sip_rules, keyed the same as var.chimesdkvoice_sip_rules"
  value       = { for k, v in aws_chimesdkvoice_sip_rule.chimesdkvoice_sip_rules : k => v.disabled if v.disabled != null }
}
output "chimesdkvoice_sip_rules_name" {
  description = "Map of name values across all chimesdkvoice_sip_rules, keyed the same as var.chimesdkvoice_sip_rules"
  value       = { for k, v in aws_chimesdkvoice_sip_rule.chimesdkvoice_sip_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "chimesdkvoice_sip_rules_region" {
  description = "Map of region values across all chimesdkvoice_sip_rules, keyed the same as var.chimesdkvoice_sip_rules"
  value       = { for k, v in aws_chimesdkvoice_sip_rule.chimesdkvoice_sip_rules : k => v.region if v.region != null && length(v.region) > 0 }
}
output "chimesdkvoice_sip_rules_target_applications" {
  description = "Map of target_applications values across all chimesdkvoice_sip_rules, keyed the same as var.chimesdkvoice_sip_rules"
  value       = { for k, v in aws_chimesdkvoice_sip_rule.chimesdkvoice_sip_rules : k => v.target_applications if v.target_applications != null && length(v.target_applications) > 0 }
}
output "chimesdkvoice_sip_rules_trigger_type" {
  description = "Map of trigger_type values across all chimesdkvoice_sip_rules, keyed the same as var.chimesdkvoice_sip_rules"
  value       = { for k, v in aws_chimesdkvoice_sip_rule.chimesdkvoice_sip_rules : k => v.trigger_type if v.trigger_type != null && length(v.trigger_type) > 0 }
}
output "chimesdkvoice_sip_rules_trigger_value" {
  description = "Map of trigger_value values across all chimesdkvoice_sip_rules, keyed the same as var.chimesdkvoice_sip_rules"
  value       = { for k, v in aws_chimesdkvoice_sip_rule.chimesdkvoice_sip_rules : k => v.trigger_value if v.trigger_value != null && length(v.trigger_value) > 0 }
}

