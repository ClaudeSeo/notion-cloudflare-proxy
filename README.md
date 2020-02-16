# notion-cloudflare-proxy

Notion 에서 Custom Domain 을 적용하기 위한 코드입니다.


### 사전 준비

- Terraform 0.12.20+
- CloudFlare 계정

## Installation

### Terraform 설치

[Install Terraform](https://learn.hashicorp.com/terraform/getting-started/install.html)

### Environment

⚠️  [variables](variables.tf) 파일을 환경에 맞게 수정해주세요.

```bash
$ export CLOUDFLARE_EMAIL="{{ CLOUDFLARE_EMAIL }}"
$ export CLOUDFLARE_API_TOKEN="{{ CLOUDFLARE_API_TOKEN }}"
```

### Terraform Init

```bash
$ terraform init
```

### Apply

```bash
$ terraform apply
```
