resource "cloudflare_teams_rule" "example" {
  account_id  = var.account_id
  name        = "Policy name"
  description = "Description"
  precedence  = 1
  enabled     = true
  action      = "egress"
  filters     = ["egress"]
  traffic     = "net.dst.ip == 1.2.3.4"
  rule_settings {
        egress {
            ipv6 = "<YOUR_IPV6>"
            ipv4 = "<YOUR_IPV4>"
        }
  }
}