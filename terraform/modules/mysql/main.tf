resource "google_sql_database_instance" "sqll1" {
  region           = var.db_region
  database_version = "MYSQL_5_6"
  name             = var.db_name
  
  deletion_protection = false

  settings {
    tier              = var.db_tier
    availability_type = "ZONAL"

    ip_configuration {
      ipv4_enabled    = true
      authorized_networks {
        value           = "159.224.76.86"
        name            = "my-laptop"
      }
    }
  }
}

resource "google_sql_user" "sql_root" {
  name     = "root"
  host     = "%"
  password = var.database_root_password
  instance = google_sql_database_instance.sqll1.name

}

resource "google_sql_user" "sql_user" {
  name     = var.database_user
  host     = "%"
  password = var.database_password
  instance = google_sql_database_instance.sqll1.name
}

resource "google_sql_database" "db" {
  name      = var.db_name
  charset   = "utf8"
  instance  = google_sql_database_instance.sqll1.name
}
