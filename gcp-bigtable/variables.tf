variable "name" {
  type    = string
  default = "baas-bigtable-instance"
  description = "The name (also called Instance Id in the Cloud Console) of the Cloud Bigtable instance"
}

variable "project_id" {
  type    = string
  default = ""
  description = "The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
}

variable "display_name" {
  type    = string
  default = "bass-tf-instance"
  description = "The human-readable display name of the Bigtable instance"
}

variable "deletion_protection" {
  type    = bool
  default = false
  description = "Whether or not to allow Terraform to destroy the instance"
}

variable "cluster_id" {
  type    = string
  default = "bigtable-cluster-id"
  description = "The ID of the Cloud Bigtable cluster"
}

variable "zone" {
  type    = string
  default = ""
  description = "The zone to create the Cloud Bigtable cluster in. If it not specified, the provider zone is used"
}

variable "num_nodes" {
  type    = number
  default = 1
  description = "The number of nodes in your Cloud Bigtable cluster"
}

variable "storage_type" {
  type    = string
  default = "SSD"
  description = "The storage type to use,One of SSD or HDD, Defaults to SSD"
}

variable "env" {
  type    = string
  default = "prod"
  description = "A set of key/value label pairs to assign to the resource"
}