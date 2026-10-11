output "secret_v1_data_id" {
  description = "Map of id values across all secret_v1_data, keyed the same as var.secret_v1_data except keys with no id are omitted"
  value       = { for k, v in kubernetes_secret_v1_data.secret_v1_data : k => v.id if v.id != null && length(v.id) > 0 }
}
output "secret_v1_data_data" {
  description = "Map of data values across all secret_v1_data, keyed the same as var.secret_v1_data except keys with no data are omitted"
  value       = { for k, v in kubernetes_secret_v1_data.secret_v1_data : k => v.data if v.data != null && length(v.data) > 0 }
}
output "secret_v1_data_field_manager" {
  description = "Map of field_manager values across all secret_v1_data, keyed the same as var.secret_v1_data except keys with no field_manager are omitted"
  value       = { for k, v in kubernetes_secret_v1_data.secret_v1_data : k => v.field_manager if v.field_manager != null && length(v.field_manager) > 0 }
}
output "secret_v1_data_force" {
  description = "Map of force values across all secret_v1_data, keyed the same as var.secret_v1_data except keys with no force are omitted"
  value       = { for k, v in kubernetes_secret_v1_data.secret_v1_data : k => v.force if v.force != null }
}
output "secret_v1_data_metadata" {
  description = "Map of metadata values across all secret_v1_data, keyed the same as var.secret_v1_data except keys with no metadata are omitted"
  value       = { for k, v in kubernetes_secret_v1_data.secret_v1_data : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}

