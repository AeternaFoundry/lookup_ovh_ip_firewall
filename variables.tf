variable "ip_firewall_lookup" {
  description = <<EOT
Map of ip_firewall_lookup, attributes below
Required:
    - ip
    - ip_on_firewall
EOT

  type = map(object({
    ip             = string
    ip_on_firewall = string
  }))
}

