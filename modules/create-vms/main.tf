resource "google_compute_address" "static" {
  name = "terraform-demo-ip-${var.cluster_name}"
}

data "google_compute_image" "debian_image" {
  family  = "debian-9"
  project = "debian-cloud"
}

resource "google_compute_instance" "instance_with_ip" {
  name         = "terraform-demo-instance-${var.cluster_name}"
  machine_type = "f1-micro"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = data.google_compute_image.debian_image.self_link
    }
  }

  network_interface {
    network = var.network_name
    access_config {
      nat_ip = google_compute_address.static.address
    }
  }
}
