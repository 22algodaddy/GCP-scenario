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
resource "google_artifact_registry_repository" "my-repo" {
  location      = "us-west1"
  repository_id = "hu-devops"
  description   = "example docker repository"
  format        = "DOCKER"
}