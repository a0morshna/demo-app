provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

module "gcr" {
  source     = "../modules/gcr"
}

module "mysql" {
  source     = "../modules/mysql"
}

module "gke" {
  source     = "../modules/gke"
}