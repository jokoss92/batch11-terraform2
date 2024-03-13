resource "google_storage_bucket" "bucket" {
  name          = "batch11-terraform-bucket"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}