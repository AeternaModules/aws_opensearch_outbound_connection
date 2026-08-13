variable "opensearch_outbound_connections" {
  description = <<EOT
Map of opensearch_outbound_connections, attributes below
Required:
    - connection_alias
    - local_domain_info (block):
        - domain_name (required)
        - owner_id (required)
        - region (required)
    - remote_domain_info (block):
        - domain_name (required)
        - owner_id (required)
        - region (required)
Optional:
    - accept_connection
    - connection_mode
    - region
    - connection_properties (block):
        - cross_cluster_search (optional, block):
            - skip_unavailable (optional)
EOT

  type = map(object({
    connection_alias  = string
    accept_connection = optional(bool)
    connection_mode   = optional(string)
    region            = optional(string)
    local_domain_info = object({
      domain_name = string
      owner_id    = string
      region      = string
    })
    remote_domain_info = object({
      domain_name = string
      owner_id    = string
      region      = string
    })
    connection_properties = optional(object({
      cross_cluster_search = optional(object({
        skip_unavailable = optional(string)
      }))
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

