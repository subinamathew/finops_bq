resource "google_bigquery_dataset_iam_member" "view_reader" {
  dataset_id = var.dataset_id
  role       = "roles/bigquery.dataViewer"
  member     = "serviceAccount:${var.service_account_email}"
}
