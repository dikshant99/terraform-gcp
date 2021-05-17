resource "google_api_gateway_api" "api_baas" {
  provider = google-beta
  api_id = var.api_id
  display_name = var.display_name
  project = var.project_id
  labels = var.labels
}
