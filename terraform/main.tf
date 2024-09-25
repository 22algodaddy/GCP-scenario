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
resource "google_container_registry" "registry" {
  project  = "My First Project "
  location = "us-west1"
}