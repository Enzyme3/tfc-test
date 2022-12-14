terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.38.0"
    }
  }
}

provider "google" {
  region = "us-central1"
}

resource "google_project" "project" {
  name = var.project_name
  project_id = var.project_id
  org_id = var.org_id
}
