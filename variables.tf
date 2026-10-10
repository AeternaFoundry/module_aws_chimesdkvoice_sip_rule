variable "chimesdkvoice_sip_rules" {
  description = <<EOT
Map of chimesdkvoice_sip_rules, attributes below
Required:
    - name
    - trigger_type
    - trigger_value
    - target_applications (block):
        - aws_region (required)
        - priority (required)
        - sip_media_application_id (required)
Optional:
    - disabled
    - region
EOT

  type = map(object({
    name          = string
    trigger_type  = string
    trigger_value = string
    disabled      = optional(bool)
    region        = optional(string)
    target_applications = list(object({
      aws_region               = string
      priority                 = number
      sip_media_application_id = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.chimesdkvoice_sip_rules : (
        length(v.target_applications) >= 1 && length(v.target_applications) <= 25
      )
    ])
    error_message = "Each target_applications list must contain between 1 and 25 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.chimesdkvoice_sip_rules : (
        alltrue([for item in v.target_applications : (length(item.sip_media_application_id) >= 1 && length(item.sip_media_application_id) <= 256)])
      )
    ])
    error_message = "must be between 1 and 256 characters"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

