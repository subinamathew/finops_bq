output "view_table_id" {
  description = "ID of the BigQuery view created"
  value       = google_bigquery_table.view.table_id
}
