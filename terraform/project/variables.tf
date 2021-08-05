variable "project_id" {
  description = "Google Cloud Platform (GCP) Project ID."
  type        = string
  default     = "teraform-1-319109"
}

variable "region" {
  description = "GCP region name."
  type        = string
  default     = "europe-central2"
}

variable "zone" {
  description = "GCP zone name."
  type        = string
  default     = "europe-central2-a"
}