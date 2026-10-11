variable "compute_region_target_https_proxies" {
  description = <<EOT
Map of compute_region_target_https_proxies, attributes below
Required:
    - name
    - url_map
Optional:
    - certificate_manager_certificates
    - deletion_policy
    - description
    - http_keep_alive_timeout_sec
    - project
    - region
    - server_tls_policy
    - ssl_certificates
    - ssl_policy
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                             = string
    url_map                          = string
    certificate_manager_certificates = optional(list(string))
    deletion_policy                  = optional(string)
    description                      = optional(string)
    http_keep_alive_timeout_sec      = optional(number)
    project                          = optional(string)
    region                           = optional(string)
    server_tls_policy                = optional(string)
    ssl_certificates                 = optional(list(string))
    ssl_policy                       = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

