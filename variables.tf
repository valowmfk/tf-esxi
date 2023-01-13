##### Provider
# - Arguments to configure the VMware vSphere Provider

variable "provider_vsphere_host" {
  description = "vCenter server FQDN or IP - Example: spectre.qbranch.home"
  type        = string
  default     = "<hostname>"
}

variable "provider_vsphere_user" {
  description = "vSphere username to use to connect to the environment - Default: administrator@vsphere.local"
  type        = string
  default     = "<user@domain>"
}

variable "provider_vsphere_password" {
  description = "vSphere password"
  type        = string
  default     = "<password>"
}

##### Infrastructure
# - Defines the vCenter / vSphere environment

variable "deploy_vsphere_datacenter" {
  description = "vSphere datacenter in which the virtual machine will be deployed."
  type        = string
  default     = "<DC Name>"
}

variable "deploy_vsphere_cluster" {
  description = "vSphere cluster in which the virtual machine will be deployed."
  type        = string
  default     = "<Cluster Name>"
}

variable "deploy_vsphere_datastore" {
  description = "Datastore in which the virtual machine will be deployed."
  type        = string
  default     = "<datastore>"
}

variable "deploy_vsphere_folder" {
  description = "The path to the folder to put this virtual machine in, relative to the datacenter that the resource pool is in."
  type        = string
  default     = "<templates folder>"
}

variable "deploy_vsphere_network" {
  description = "Porgroup to which the virtual machine will be connected."
  type        = string
  default     = "<vmnic Network Name>"
}

##### Guest
# - Describes virtual machine / guest options

variable "guest_name_prefix" {
  description = "VM / hostname prefix for the kubernetes cluster."
  type        = string
  default     = "tkc"
}

variable "guest_template" {
  description = "The source virtual machine or template to clone from."
  type        = string
  default     = "terraform-ubuntu"
}

variable "guest_vcpu" {
  description = "The number of virtual processors to assign to this virtual machine. Default: 1."
  default     = "2"
}

variable "guest_memory" {
  description = "The size of the virtual machine's memory, in MB. Default: 1024 (1 GB)."
  default     = "4096"
}

variable "guest_ipv4_netmask" {
  description = "The IPv4 subnet mask, in bits (example: 24 for 255.255.255.0)."
  type        = string
  default     = "24"
}

variable "guest_ipv4_gateway" {
  description = "The IPv4 default gateway."
  type        = string
  default     = "172.16.30.1"
}

variable "guest_dns_servers" {
  description = "The list of DNS servers to configure on the virtual machine."
  type        = string
  default     = "10.1.10.1"
}

variable "guest_dns_suffix" {
  description = "A list of DNS search domains to add to the DNS configuration on the virtual machine."
  type        = string
  default     = "<domain name>"
}

variable "guest_domain" {
  description = "The domain name for this machine."
  type        = string
  default     = "<domain name>"
}

variable "guest_ssh_user" {
  description = "SSH username to connect to the guest VM."
  type        = string
  default     = "<username>"
}

variable "guest_ssh_password" {
  description = "SSH password to connect to the guest VM."
  type        = string
  default     = "<password>"
}

variable "guest_ssh_key_private" {
  description = "SSH private key (e.g., id_rsa) path."
  type        = string
  default     = "<private key file>"
}

variable "guest_ssh_key_public" {
  description = "SSH public key (e.g., id_rsa.pub) path."
  type        = string
  default     = "<public key file>"
}

##### Master(s)
# - Describes master(s) nodes options

variable "master_ips" {
  type        = map(any)
  description = "List of IPs used for the kubernetes master nodes. 1 IP for a single master, or 3 for a multi-master configuration."
}

##### Worker(s)
# - Describes workers(s) nodes (a.k.a., minions) options

variable "worker_ips" {
  type        = map(any)
  description = "List of IPs used for the kubernetes worker nodes."
}