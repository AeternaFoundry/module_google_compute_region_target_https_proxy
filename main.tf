resource "google_compute_region_target_https_proxy" "compute_region_target_https_proxies" {
  for_each = var.compute_region_target_https_proxies

  name                             = each.value.name
  url_map                          = each.value.url_map
  certificate_manager_certificates = each.value.certificate_manager_certificates
  deletion_policy                  = each.value.deletion_policy
  description                      = each.value.description
  http_keep_alive_timeout_sec      = each.value.http_keep_alive_timeout_sec
  project                          = each.value.project
  region                           = each.value.region
  server_tls_policy                = each.value.server_tls_policy
  ssl_certificates                 = each.value.ssl_certificates
  ssl_policy                       = each.value.ssl_policy

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

