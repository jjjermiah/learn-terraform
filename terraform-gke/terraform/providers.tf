terraform {

  # Instead of keeping terraform state locally we will store it in a GCS bucket
  # so we can share it with other team members
  backend "gcs" {
    bucket = "orcestradata"
    prefix = "terraform/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

