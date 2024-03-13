resource "google_compute_network" "vpc_network" {
  name = "vpc-dev"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet_apps" {
  name          = "subnet-apps"
  ip_cidr_range = "10.2.0.0/24"
  network       = google_compute_network.vpc_network.name
}

resource "google_compute_subnetwork" "subnet_db" {
  name          = "subnet-db"
  ip_cidr_range = "10.3.0.0/24"
  network       = google_compute_network.vpc_network.name
}