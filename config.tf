terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.2.0"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "gcp-demo-ksiedlarek"

    workspaces {
      prefix = "tfcloud-vcs"
    }
  }
}


provider "google" {
}
