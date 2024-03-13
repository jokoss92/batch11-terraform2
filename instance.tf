resource "google_compute_instance" "dev-apps-01" {
  name         = "staging-apps-01"
  machine_type = "e2-micro"

  tags = ["http", "apps", "dev"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    subnetwork = google_compute_subnetwork.subnet_apps.name

    access_config {
      // Ephemeral public IP
    }
  }
}

resource "google_compute_instance" "dev-db-01" {
  name         = "staging-db-01"
  machine_type = "e2-micro"

  tags = ["db", "apps", "dev"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    subnetwork = google_compute_subnetwork.subnet_db.name

    access_config {
      // Ephemeral public IP
    }
  }
}

