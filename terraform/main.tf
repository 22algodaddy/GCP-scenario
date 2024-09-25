terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.4.0"
    }
  }
}

provider "google" {
  # Configuration options
}
resource "google_storage_bucket" "static-site" {
  name          = "hudevops24dhruv"
  location      = "us-west1"
  force_destroy = true

  uniform_bucket_level_access = true
  cors {
    origin          = ["http://image-store.com"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600
  }
}
