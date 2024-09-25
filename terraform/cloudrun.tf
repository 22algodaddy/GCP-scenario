resource "google_cloud_run_service" "hu24-nithinkumar" {
  name     = "hu24-nithinkumar"
  location = "us-west1"

  template {
    spec {
      containers {
       // image = "us-west1-docker.pkg.dev/mythic-delight-434312-r1/hu-devops/main:latest"
        image = "gcr.io/mythic-delight-434312-r1/hello-world:latest"
        //image = "us-docker.pkg.dev/my-pro/container/my-image:latest"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}