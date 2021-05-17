variable "api_id" {
  type    = string
  default = "api-baas"
  description = "Identifier to assign to the API."
}

variable "display_name" {
  type    = string
  default = "api-baas-display"
  description = "A user-visible name for the API."
}

variable "project_id" {
  type    = string
  default = ""
  description = "The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
}

variable "labels" {
  type    = map(string)
  default = null
  description = "Resource labels to represent user-provided metadata in key:value pair"
}