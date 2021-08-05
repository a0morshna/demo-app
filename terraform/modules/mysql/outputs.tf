output "database_host" {
  value = google_sql_database_instance.sqll1.ip_address.0.ip_address
}

output "database_instance_name" {
  value = google_sql_database_instance.sqll1.name
}