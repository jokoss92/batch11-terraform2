resource "google_compute_firewall" "firewall_rule" {
  name    = "allow-apps-and-db"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000", "5432"]
  }

  source_tags = ["http", "apps", "db"]
}