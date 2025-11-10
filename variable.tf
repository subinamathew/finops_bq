variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "dataset_id" {
  description = "BigQuery dataset ID"
  type        = string
}

variable "view_id" {
  description = "Name of the BigQuery view"
  type        = string
}

variable "environment" {
  description = "Environment (dev, prod, etc.)"
  type        = string
}

variable "owner" {
  description = "Owner of the view"
  type        = string
}

variable "service_account_email" {
  description = "Service account to grant view access"
  type        = string
}
