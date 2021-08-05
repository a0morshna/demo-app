variable "name" {
  description = "Name for GKE cluster."
  type        = string
  default     = "gke-cluster1"
}

variable "location" {
  description = "GKE cluster location."
  type        = string
  default     = "europe-central2"
}

variable "machine_type" {
  description = "Machine type for GKE cluster."
  type        = string
  default     = "n1-standard-2"
}

variable "service_account" {
  description = "Service account e-mail for GKE cluster."
  type        = string
  default     = "terraform1@teraform-1-319109.iam.gserviceaccount.com"
}

variable "google_container_node_pool_name" {
  description = "GKE cluster node name for pool."
  type        = string
  default     = "node1"
}
