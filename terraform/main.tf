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
  project = "My First Project "
  region  = "us-west1"
}
resource "google_container_registry" "registry" {
  location = "us-west1"
}