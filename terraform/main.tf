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
  project = "mythic-delight-434312-r1"
  region  = "us-west1"
}
resource "google_container_registry" "registry" {
  location = "us-west1"
}