terraform {
  required_version = "= 0.12.26"

  backend "gcs" {
    bucket = "terraform-for-fun"
    prefix = "terraform/state/first-step"
  }
}

provider "google" {
  version = "2.19.0"
  project = ""
  region  = "europe-west3"
}
