output "opensearch_outbound_connections_id" {
  description = "Map of id values across all opensearch_outbound_connections, keyed the same as var.opensearch_outbound_connections"
  value       = { for k, v in aws_opensearch_outbound_connection.opensearch_outbound_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "opensearch_outbound_connections_accept_connection" {
  description = "Map of accept_connection values across all opensearch_outbound_connections, keyed the same as var.opensearch_outbound_connections"
  value       = { for k, v in aws_opensearch_outbound_connection.opensearch_outbound_connections : k => v.accept_connection if v.accept_connection != null }
}
output "opensearch_outbound_connections_connection_alias" {
  description = "Map of connection_alias values across all opensearch_outbound_connections, keyed the same as var.opensearch_outbound_connections"
  value       = { for k, v in aws_opensearch_outbound_connection.opensearch_outbound_connections : k => v.connection_alias if v.connection_alias != null && length(v.connection_alias) > 0 }
}
output "opensearch_outbound_connections_connection_mode" {
  description = "Map of connection_mode values across all opensearch_outbound_connections, keyed the same as var.opensearch_outbound_connections"
  value       = { for k, v in aws_opensearch_outbound_connection.opensearch_outbound_connections : k => v.connection_mode if v.connection_mode != null && length(v.connection_mode) > 0 }
}
output "opensearch_outbound_connections_connection_properties" {
  description = "Map of connection_properties values across all opensearch_outbound_connections, keyed the same as var.opensearch_outbound_connections"
  value       = { for k, v in aws_opensearch_outbound_connection.opensearch_outbound_connections : k => v.connection_properties if v.connection_properties != null && length(v.connection_properties) > 0 }
}
output "opensearch_outbound_connections_connection_status" {
  description = "Map of connection_status values across all opensearch_outbound_connections, keyed the same as var.opensearch_outbound_connections"
  value       = { for k, v in aws_opensearch_outbound_connection.opensearch_outbound_connections : k => v.connection_status if v.connection_status != null && length(v.connection_status) > 0 }
}
output "opensearch_outbound_connections_local_domain_info" {
  description = "Map of local_domain_info values across all opensearch_outbound_connections, keyed the same as var.opensearch_outbound_connections"
  value       = { for k, v in aws_opensearch_outbound_connection.opensearch_outbound_connections : k => v.local_domain_info if v.local_domain_info != null && length(v.local_domain_info) > 0 }
}
output "opensearch_outbound_connections_region" {
  description = "Map of region values across all opensearch_outbound_connections, keyed the same as var.opensearch_outbound_connections"
  value       = { for k, v in aws_opensearch_outbound_connection.opensearch_outbound_connections : k => v.region if v.region != null && length(v.region) > 0 }
}
output "opensearch_outbound_connections_remote_domain_info" {
  description = "Map of remote_domain_info values across all opensearch_outbound_connections, keyed the same as var.opensearch_outbound_connections"
  value       = { for k, v in aws_opensearch_outbound_connection.opensearch_outbound_connections : k => v.remote_domain_info if v.remote_domain_info != null && length(v.remote_domain_info) > 0 }
}

