variable "db_name" {
  description = "Name for database."
  type        = string
  default     = "sqll1"
}

variable "db_region" {
  description = "Region for database instance."
  type        = string
  default     = "europe-central2"
}

variable "db_tier" {
  description = "Tier for database instance."
  type        = string
  default     = "db-f1-micro"
}

variable "database_root_password" {
  type = string
  default = "thisIsA123PASS"
}

variable "database_user" {
  type = string
  default = "apiuser"
}

variable "database_password" {
  type = string
  default = "SecretPassword123!"
}