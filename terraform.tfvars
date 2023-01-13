# Provider
provider_vsphere_host     = ""
provider_vsphere_user     = ""
provider_vsphere_password = ""

# Infrastructure
deploy_vsphere_datacenter = ""
deploy_vsphere_cluster    = ""
deploy_vsphere_datastore  = ""
deploy_vsphere_folder     = ""
deploy_vsphere_network    = ""

# Guest
guest_name_prefix     = "tkc-prod"
guest_template        = "templates/rocky-tf"
guest_vcpu            = "2"
guest_memory          = "4096"
guest_ipv4_netmask    = "24"
guest_ipv4_gateway    = ""
guest_dns_servers     = ""
guest_dns_suffix      = ""
guest_domain          = ""
guest_ssh_user        = ""
guest_ssh_password    = ""
guest_ssh_key_private = ""
guest_ssh_key_public  = "~/.ssh/id_ed25519.pub"

# Master(s)
master_ips = {
  "0" = "172.16.30.117"
  # "1" = "10.67.11.12"
  # "2" = "10.67.11.13"
}

# Worker(s)
worker_ips = {
  "0" = "172.16.30.118"
  "1" = "172.16.30.119"
  # "2" = "10.67.11.23"
  # "3" = "10.67.11.24"
}