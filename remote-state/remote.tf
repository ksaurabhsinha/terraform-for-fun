data "terraform_remote_state" "first-step" {
  backend = "gcs"
  config = {
    bucket = "terraform-for-fun"
    prefix = "terraform/state/first-step"
  }
}
