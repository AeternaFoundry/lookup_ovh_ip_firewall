output "ip_firewall_lookup_id" {
  description = "Map of id values across all ip_firewall_lookup, keyed the same as var.ip_firewall_lookup except keys with no id are omitted"
  value       = { for k, v in data.ovh_ip_firewall.ip_firewall_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ip_firewall_lookup_enabled" {
  description = "Map of enabled values across all ip_firewall_lookup, keyed the same as var.ip_firewall_lookup except keys with no enabled are omitted"
  value       = { for k, v in data.ovh_ip_firewall.ip_firewall_lookup : k => v.enabled if v.enabled != null }
}
output "ip_firewall_lookup_ip" {
  description = "Map of ip values across all ip_firewall_lookup, keyed the same as var.ip_firewall_lookup except keys with no ip are omitted"
  value       = { for k, v in data.ovh_ip_firewall.ip_firewall_lookup : k => v.ip if v.ip != null && length(v.ip) > 0 }
}
output "ip_firewall_lookup_ip_on_firewall" {
  description = "Map of ip_on_firewall values across all ip_firewall_lookup, keyed the same as var.ip_firewall_lookup except keys with no ip_on_firewall are omitted"
  value       = { for k, v in data.ovh_ip_firewall.ip_firewall_lookup : k => v.ip_on_firewall if v.ip_on_firewall != null && length(v.ip_on_firewall) > 0 }
}
output "ip_firewall_lookup_state" {
  description = "Map of state values across all ip_firewall_lookup, keyed the same as var.ip_firewall_lookup except keys with no state are omitted"
  value       = { for k, v in data.ovh_ip_firewall.ip_firewall_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

