output "data_factory_trigger_custom_events" {
  description = "All data_factory_trigger_custom_event resources"
  value       = azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events
}
output "data_factory_trigger_custom_events_activated" {
  description = "List of activated values across all data_factory_trigger_custom_events"
  value       = [for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : v.activated]
}
output "data_factory_trigger_custom_events_additional_properties" {
  description = "List of additional_properties values across all data_factory_trigger_custom_events"
  value       = [for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : v.additional_properties]
}
output "data_factory_trigger_custom_events_annotations" {
  description = "List of annotations values across all data_factory_trigger_custom_events"
  value       = [for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : v.annotations]
}
output "data_factory_trigger_custom_events_data_factory_id" {
  description = "List of data_factory_id values across all data_factory_trigger_custom_events"
  value       = [for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : v.data_factory_id]
}
output "data_factory_trigger_custom_events_description" {
  description = "List of description values across all data_factory_trigger_custom_events"
  value       = [for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : v.description]
}
output "data_factory_trigger_custom_events_eventgrid_topic_id" {
  description = "List of eventgrid_topic_id values across all data_factory_trigger_custom_events"
  value       = [for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : v.eventgrid_topic_id]
}
output "data_factory_trigger_custom_events_events" {
  description = "List of events values across all data_factory_trigger_custom_events"
  value       = [for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : v.events]
}
output "data_factory_trigger_custom_events_name" {
  description = "List of name values across all data_factory_trigger_custom_events"
  value       = [for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : v.name]
}
output "data_factory_trigger_custom_events_pipeline" {
  description = "List of pipeline values across all data_factory_trigger_custom_events"
  value       = [for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : v.pipeline]
}
output "data_factory_trigger_custom_events_subject_begins_with" {
  description = "List of subject_begins_with values across all data_factory_trigger_custom_events"
  value       = [for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : v.subject_begins_with]
}
output "data_factory_trigger_custom_events_subject_ends_with" {
  description = "List of subject_ends_with values across all data_factory_trigger_custom_events"
  value       = [for k, v in azurerm_data_factory_trigger_custom_event.data_factory_trigger_custom_events : v.subject_ends_with]
}

