variable "dev-rgs" {}

variable "dev-subnet" {}

variable "dev-vms" {}

variable "dev-vnets" {}

variable "admin_username" {
  description = "Linux VM administrator username"
  type        = string
  default     = "azureuser"
}

variable "admin_ssh_public_key" {
  description = "SSH public key used to authenticate to the Linux VMs"
  type        = string
}
