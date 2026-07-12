output "data_factory_trigger_custom_events_id" {
  description = "Map of id values across all data_factory_trigger_custom_events, keyed the same as var.data_factory_trigger_custom_events"
  value       = { for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : k => v.id }
}
output "data_factory_trigger_custom_events_activated" {
  description = "Map of activated values across all data_factory_trigger_custom_events, keyed the same as var.data_factory_trigger_custom_events"
  value       = { for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : k => v.activated }
}
output "data_factory_trigger_custom_events_additional_properties" {
  description = "Map of additional_properties values across all data_factory_trigger_custom_events, keyed the same as var.data_factory_trigger_custom_events"
  value       = { for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : k => v.additional_properties }
}
output "data_factory_trigger_custom_events_annotations" {
  description = "Map of annotations values across all data_factory_trigger_custom_events, keyed the same as var.data_factory_trigger_custom_events"
  value       = { for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : k => v.annotations }
}
output "data_factory_trigger_custom_events_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_trigger_custom_events, keyed the same as var.data_factory_trigger_custom_events"
  value       = { for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : k => v.data_factory_id }
}
output "data_factory_trigger_custom_events_description" {
  description = "Map of description values across all data_factory_trigger_custom_events, keyed the same as var.data_factory_trigger_custom_events"
  value       = { for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : k => v.description }
}
output "data_factory_trigger_custom_events_eventgrid_topic_id" {
  description = "Map of eventgrid_topic_id values across all data_factory_trigger_custom_events, keyed the same as var.data_factory_trigger_custom_events"
  value       = { for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : k => v.eventgrid_topic_id }
}
output "data_factory_trigger_custom_events_events" {
  description = "Map of events values across all data_factory_trigger_custom_events, keyed the same as var.data_factory_trigger_custom_events"
  value       = { for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : k => v.events }
}
output "data_factory_trigger_custom_events_name" {
  description = "Map of name values across all data_factory_trigger_custom_events, keyed the same as var.data_factory_trigger_custom_events"
  value       = { for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : k => v.name }
}
output "data_factory_trigger_custom_events_pipeline" {
  description = "Map of pipeline values across all data_factory_trigger_custom_events, keyed the same as var.data_factory_trigger_custom_events"
  value       = { for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : k => v.pipeline }
}
output "data_factory_trigger_custom_events_subject_begins_with" {
  description = "Map of subject_begins_with values across all data_factory_trigger_custom_events, keyed the same as var.data_factory_trigger_custom_events"
  value       = { for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : k => v.subject_begins_with }
}
output "data_factory_trigger_custom_events_subject_ends_with" {
  description = "Map of subject_ends_with values across all data_factory_trigger_custom_events, keyed the same as var.data_factory_trigger_custom_events"
  value       = { for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : k => v.subject_ends_with }
}

