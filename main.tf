resource "aws_opensearch_outbound_connection" "opensearch_outbound_connections" {
  for_each = var.opensearch_outbound_connections

  connection_alias  = each.value.connection_alias
  accept_connection = each.value.accept_connection
  connection_mode   = each.value.connection_mode
  region            = each.value.region

  local_domain_info {
    domain_name = each.value.local_domain_info.domain_name
    owner_id    = each.value.local_domain_info.owner_id
    region      = each.value.local_domain_info.region
  }

  remote_domain_info {
    domain_name = each.value.remote_domain_info.domain_name
    owner_id    = each.value.remote_domain_info.owner_id
    region      = each.value.remote_domain_info.region
  }

  dynamic "connection_properties" {
    for_each = each.value.connection_properties != null ? [each.value.connection_properties] : []
    content {
      dynamic "cross_cluster_search" {
        for_each = connection_properties.value.cross_cluster_search != null ? [connection_properties.value.cross_cluster_search] : []
        content {
          skip_unavailable = cross_cluster_search.value.skip_unavailable
        }
      }
    }
  }
}

