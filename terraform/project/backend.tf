terraform {
  backend "gcs" {
      bucket      = "task-bucket-tf1"
      prefix      = "project/terraform.tfstate"
  }
} 