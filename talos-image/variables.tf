variable "image" {
  description = "Talos image configuration"
  type = object({
    factory_url = optional(string, "https://factory.talos.dev")
    schematic = optional(string, "schematic.yaml")
    version  = string
    update_schematic = optional(string)
    update_version = optional(string)
    arch = optional(string, "amd64")
    platform = optional(string, "nocloud")
    proxmox_datastore = optional(string, "local")
    name_prefix = string
  })
}

