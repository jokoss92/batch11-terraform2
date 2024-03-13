terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.16.0"
    }
  }
}

provider "google" {
  # Configuration options
  project     = "batch11-terraform"
  region      = "us-central1"
  zone         = "us-central1-a"
  credentials = "/home/joko_ss_devsecops10/batch11-terraform2/batch11-terraform-c7da07dfb163.json"
}