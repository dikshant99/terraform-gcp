variable "baas_bucket_name" {
  type    = string
  default = "baas-gcp-bucket"
  description = "The name of the bucket."
}

variable "location" {
  type    = string
  default = "US"
  description = "GCS Location"
}

variable "project_id" {
  type    = string
  default = ""
  description = "The ID of the project in which the resource belongs."
}

variable "force_destroy" {
  type    = bool
  default = false
  description = "When delete bucket, want to delete all contained object or not"
}

variable "storage_class" {
  type    = string
  default = "STANDARD"
  description = "Supported values are-: STANDARD,REGIONAL,NEARLINE,COLDLINE,ARCHIVE,MULTI_REGIONAL"
}

variable "uniform_bucket_level_access" {
  type    = bool
  default = false
  description = "Enables uniform bucket level access to bucket"
}

variable "versioning" {
  type    = bool
  default = false
  description = "Want to enable versioning or not for this bucket?"
}

variable "bucket_is_locked" {
  type    = bool
  default = false
  description = "Is set to true then bucket will be locked and permanently restrict edits,It is irreversible action."
}

variable "bucket_retention_period" {
  type    = number
  default = 864000
  description = "The period of time, in seconds, that objects in the bucket must be retained and cannot be deleted, overwritten, or archived. The value must be less than 2,147,483,647 seconds."
}

variable "logging_log_bucket" {
  type    = string
  default = ""
  description = "The bucket that will receive log objects."
}

variable "logging_log_object_prefix" {
  type    = string
  default = ""
  description = "The object prefix for log objects. If it's not provided, by default GCS sets this to this bucket's name."
}

variable "encryption_kms_key_name" {
  type    = string
  default = ""
  description = "The id of kms key that is used to encrypt the object in bucket"
}

variable "labels" {
  type        = map(string)
  default     = null
  description = "A set of key/value label pairs to assign to the bucket."
}

variable "requester_pays" {
  type        = bool
  default     = false
  description = "Enabled requester pays on storage bucket"
}

variable "lifecycle_action_type" {
  type        = string
  default     = "Delete"
  description = "The type of the action of this Lifecycle Rule. Supported values include: Delete and SetStorageClass."
}

variable "lifecycle_action_storageclass" {
  type        = string
  default     = ""
  description = "The target Storage Class of objects affected by this Lifecycle Rule. Supported values include: STANDARD, MULTI_REGIONAL etc."
}

variable "lifecycle_age_object" {
  type        = number
  default     = 3
  description = "Minimum age of an object in days to satisfy this condition."
}

variable "object_created_before" {
  type        = string
  default     = null
  description = "Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition."
}

variable "object_state" {
  type        = string
  default     = ""
  description = "Match to live and/or archived objects. Unversioned buckets have only live objects. Supported values include: LIVE,ARCHIVED,ANY."
}

variable "object_new_ver" {
  type        = number
  default     = null
  description = "Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition."
}

variable "object_create_date" {
  type        = string
  default     = null
  description = "Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition."
}