# Google BigQuery View
resource "google_bigquery_table" "view" {
  dataset_id = var.dataset_id
  table_id   = var.view_id
  deletion_protection = false

  view {
    query          = file("${path.module}/sql/my_view.sql")
    use_legacy_sql = false
  }

  labels = {
    environment = var.environment
    owner       = var.owner
    managed_by  = "terraform"
  }

  depends_on = [google_project_service.bigquery]
}
