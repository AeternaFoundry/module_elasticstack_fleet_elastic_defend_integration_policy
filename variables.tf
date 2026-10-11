variable "fleet_elastic_defend_integration_policies" {
  description = <<EOT
Map of fleet_elastic_defend_integration_policies, attributes below
Required:
    - integration_version
    - name
    - namespace
    - policy
Optional:
    - advanced_settings
    - agent_policy_id
    - agent_policy_ids
    - description
    - enabled
    - force
    - policy_id
    - preset
    - space_ids
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    integration_version = string
    name                = string
    namespace           = string
    policy = object({
      linux = optional(object({
        behavior_protection = optional(object({
          mode               = optional(string)
          reputation_service = optional(bool)
          supported          = optional(bool)
        }))
        events = optional(object({
          file         = optional(bool)
          network      = optional(bool)
          process      = optional(bool)
          session_data = optional(bool)
          tty_io       = optional(bool)
        }))
        logging = optional(object({
          file = optional(string)
        }))
        malware = optional(object({
          blocklist = optional(bool)
          mode      = optional(string)
        }))
        memory_protection = optional(object({
          mode      = optional(string)
          supported = optional(bool)
        }))
        popup = optional(object({
          behavior_protection = optional(object({
            enabled = optional(bool)
            message = optional(string)
          }))
          malware = optional(object({
            enabled = optional(bool)
            message = optional(string)
          }))
          memory_protection = optional(object({
            enabled = optional(bool)
            message = optional(string)
          }))
        }))
      }))
      mac = optional(object({
        behavior_protection = optional(object({
          mode               = optional(string)
          reputation_service = optional(bool)
          supported          = optional(bool)
        }))
        events = optional(object({
          file    = optional(bool)
          network = optional(bool)
          process = optional(bool)
        }))
        logging = optional(object({
          file = optional(string)
        }))
        malware = optional(object({
          blocklist     = optional(bool)
          mode          = optional(string)
          notify_user   = optional(bool)
          on_write_scan = optional(bool)
        }))
        memory_protection = optional(object({
          mode      = optional(string)
          supported = optional(bool)
        }))
        popup = optional(object({
          behavior_protection = optional(object({
            enabled = optional(bool)
            message = optional(string)
          }))
          malware = optional(object({
            enabled = optional(bool)
            message = optional(string)
          }))
          memory_protection = optional(object({
            enabled = optional(bool)
            message = optional(string)
          }))
        }))
      }))
      windows = optional(object({
        antivirus_registration = optional(object({
          enabled = optional(bool)
          mode    = optional(string)
        }))
        attack_surface_reduction = optional(object({
          credential_hardening = optional(object({
            enabled = optional(bool)
          }))
        }))
        behavior_protection = optional(object({
          mode               = optional(string)
          reputation_service = optional(bool)
          supported          = optional(bool)
        }))
        events = optional(object({
          authentication      = optional(bool)
          dll_and_driver_load = optional(bool)
          dns                 = optional(bool)
          file                = optional(bool)
          network             = optional(bool)
          process             = optional(bool)
          registry            = optional(bool)
          security            = optional(bool)
        }))
        logging = optional(object({
          file = optional(string)
        }))
        malware = optional(object({
          blocklist     = optional(bool)
          mode          = optional(string)
          notify_user   = optional(bool)
          on_write_scan = optional(bool)
        }))
        memory_protection = optional(object({
          mode      = optional(string)
          supported = optional(bool)
        }))
        popup = optional(object({
          behavior_protection = optional(object({
            enabled = optional(bool)
            message = optional(string)
          }))
          malware = optional(object({
            enabled = optional(bool)
            message = optional(string)
          }))
          memory_protection = optional(object({
            enabled = optional(bool)
            message = optional(string)
          }))
          ransomware = optional(object({
            enabled = optional(bool)
            message = optional(string)
          }))
        }))
        ransomware = optional(object({
          mode      = optional(string)
          supported = optional(bool)
        }))
      }))
    })
    advanced_settings = optional(map(string))
    agent_policy_id   = optional(string)
    agent_policy_ids  = optional(list(string))
    description       = optional(string)
    enabled           = optional(bool)
    force             = optional(bool)
    policy_id         = optional(string)
    preset            = optional(string)
    space_ids         = optional(set(string))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

