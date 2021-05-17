resource "google_storage_bucket" "gcp-storage" {
  name          = var.baas_bucket_name
  location      = var.location
  project       = var.project_id
  force_destroy = var.force_destroy
  storage_class = var.storage_class
  requester_pays = var.requester_pays
  uniform_bucket_level_access = var.uniform_bucket_level_access
  labels       = var.labels
  versioning {
      enabled = var.versioning
  }
  retention_policy {
      is_locked = var.bucket_is_locked
      retention_period = var.bucket_retention_period
  }
  logging {
      log_bucket = var.logging_log_bucket
      log_object_prefix = var.logging_log_object_prefix
  }
  encryption {
      default_kms_key_name = var.encryption_kms_key_name
  }
  lifecycle_rule {
    condition {
      age                        = var.lifecycle_age_object
      created_before             = var.object_created_before
      with_state                 = var.object_state
      num_newer_versions         = var.object_new_ver
      custom_time_before         = var.object_create_date
    }
    action {
      type = var.lifecycle_action_type
      storage_class = var.lifecycle_action_storageclass
    }
  }
}
