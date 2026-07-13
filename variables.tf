variable "data_factory_trigger_custom_events" {
  description = <<EOT
Map of data_factory_trigger_custom_events, attributes below
Required:
    - data_factory_id
    - eventgrid_topic_id
    - events
    - name
    - pipeline (block):
        - name (required)
        - parameters (optional)
Optional:
    - activated
    - additional_properties
    - annotations
    - description
    - subject_begins_with
    - subject_ends_with
EOT

  type = map(object({
    data_factory_id       = string
    eventgrid_topic_id    = string
    events                = set(string)
    name                  = string
    activated             = optional(bool)
    additional_properties = optional(map(string))
    annotations           = optional(list(string))
    description           = optional(string)
    subject_begins_with   = optional(string)
    subject_ends_with     = optional(string)
    pipeline = list(object({
      name       = string
      parameters = optional(map(string))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_custom_events : (
        length(v.pipeline) >= 1
      )
    ])
    error_message = "Each pipeline list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_custom_events : (
        v.annotations == null || (alltrue([for x in v.annotations : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_custom_events : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_custom_events : (
        v.subject_begins_with == null || (length(v.subject_begins_with) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_custom_events : (
        v.subject_ends_with == null || (length(v.subject_ends_with) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

