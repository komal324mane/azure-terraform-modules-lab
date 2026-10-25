variable "vms" {
  description = "Virtual machines to create, keyed by a stable Terraform instance name"
  type = map(object({
    vms_name             = string
    location             = string
    resource_group_name  = string
    subnet_id            = string
    vm_size              = string
    nic_name             = string
    pip_name             = string
    allocation_method    = string
    subnet_name          = string
    virtual_network_name = string
  }))
}

data "azurerm_subnet" "subnet" {
  for_each             = var.vms
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

variable "subnet_ids" {
  description = "Legacy input retained for compatibility with the existing root module"
  type        = map(any)
}

variable "admin_username" {
  description = "Linux VM administrator username"
  type        = string
}

variable "admin_ssh_public_key" {
  description = "SSH public key used to authenticate to the Linux VMs"
  type        = string
}
