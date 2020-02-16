resource "cloudflare_zone" "clud" {
  zone = var.domain
  plan = "free"
}

resource "cloudflare_worker_script" "notion_script" {
  name = "custom-domain-proxy"
  content = templatefile("./scripts/worker.tmpl", {
    DOMAIN        = var.domain,
    ORIGIN_DOMAIN = var.origin_domain,
    DISQUS        = var.disqus,
  })
}

resource "cloudflare_worker_route" "notion_route" {
  zone_id     = cloudflare_zone.clud.id
  pattern     = "${var.domain}/*"
  script_name = cloudflare_worker_script.notion_script.name
}
