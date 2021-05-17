resource "google_bigtable_instance" "bigtable-instance" {
  name = var.name
  project = var.project_id
  display_name = var.display_name
  deletion_protection = var.deletion_protection

  cluster {
    cluster_id   = var.cluster_id
    zone = var.zone
    num_nodes    = var.num_nodes
    storage_type = var.storage_type
  }

  labels = {
    env = var.env
  }
}
