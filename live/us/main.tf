module "europe-instance" {
  source = "../../modules/create-vms"
  
  zone = "europe-west3-a"
  cluster_name = "europe-cluster"
  network_name = data.terraform_remote_state.first-step.outputs.network_name
}
