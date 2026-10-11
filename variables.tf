variable "database_management_external_cluster_instances" {
  description = <<EOT
Map of database_management_external_cluster_instances, attributes below
Required:
    - external_cluster_instance_id
Optional:
    - defined_tags
    - external_connector_id
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    external_cluster_instance_id = string
    defined_tags                 = optional(map(string))
    external_connector_id        = optional(string)
    freeform_tags                = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

