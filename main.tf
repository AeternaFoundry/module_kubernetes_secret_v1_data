resource "kubernetes_secret_v1_data" "secret_v1_data" {
  for_each = var.secret_v1_data

  data          = each.value.data
  field_manager = each.value.field_manager
  force         = each.value.force

  metadata {
    name      = each.value.metadata.name
    namespace = each.value.metadata.namespace
  }
}

