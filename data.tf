data "google_compute_network" "vpc-default" {
  name = "default"
}

resource "google_compute_subnetwork" "subnet-test" {
  name          = "subnet-test"
  ip_cidr_range = "192.168.10.0/24"
  network       = data.google_compute_network.vpc-default.id
}