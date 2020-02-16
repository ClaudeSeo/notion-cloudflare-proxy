terraform {
  required_version = ">= 0.12"
}

provider "cloudflare" {
  version    = ">= 2.2.0, < 3"
  account_id = var.cloudflare_account_id
}
