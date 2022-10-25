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

data "tfe_outputs" "foo" {
  organization = "example-org-11285a"
  workspace = "tfc-test"
}

resource "google_compute_network" "vpc_network" {
  project                 = data.tfe_outputs.foo.project_id
  name                    = "vpc-network"
}
