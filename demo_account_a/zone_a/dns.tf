resource "cloudflare_record" "www" {
  zone_id = var.zone_id
  name    = "www"
  value   = "<YOUR_ORIGIN_IP>"
  type    = "A"
  proxied = true
}