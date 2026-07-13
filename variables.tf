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
  # --- Unconfirmed validation candidates, derived from azurerm_data_factory_trigger_custom_event's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.DataFactoryPipelineAndTriggerName] !regexp.MustCompile(`^[A-Za-z0-9_][^<>*#.%&:\\+?/]*$`).MatchString(value)
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] !ok
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] err != nil
  # path: eventgrid_topic_id
  #   source:    [from topics.ValidateTopicID] !ok
  # path: eventgrid_topic_id
  #   source:    [from topics.ValidateTopicID] err != nil
  # path: pipeline.name
  #   source:    [from validate.DataFactoryPipelineAndTriggerName] !regexp.MustCompile(`^[A-Za-z0-9_][^<>*#.%&:\\+?/]*$`).MatchString(value)
  # path: annotations[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: subject_begins_with
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: subject_ends_with
  #   condition: length(value) > 0
  #   message:   must not be empty
}

