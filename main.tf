data "ovh_ip_firewall" "ip_firewall_lookup" {
  for_each = var.ip_firewall_lookup

  ip             = each.value.ip
  ip_on_firewall = each.value.ip_on_firewall
}

