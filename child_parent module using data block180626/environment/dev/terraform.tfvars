dev-rgs = {
  rg1 = "Central India"
  rg2 = "East US"

}

dev-vnets = {
  vnet1 = {
    nsg_name            = "Network_Security1"
    location            = "Central India"
    resource_group_name = "rg1"
    vnet_name           = "Network1"
    address_space       = ["10.0.0.0/16"]
  }
  vnet2 = {
    nsg_name            = "Network_Security2"
    location            = "East US"
    resource_group_name = "rg2"
    vnet_name           = "Network2"
    address_space       = ["10.0.0.0/16"]
  }
}

dev-subnet = {
  subnet1 = {
    name                 = "Frontend_subnet"
    resource_group_name  = "rg1"
    virtual_network_name = "Network1"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "Backend_subnet"
    resource_group_name  = "rg2"
    virtual_network_name = "Network2"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

dev-vms = {
  vm1 = {
    vms_name             = "frontendVM"
    location             = "West India"
    resource_group_name  = "rg1"
    subnet_id            = "Frontend_subnet"
    vm_size              = "Standard_DS1_v2"
    nic_name             = "NIC1"
    pip_name             = "PublicIp1"
    allocation_method    = "Static"
    subnet_name          = "Frontend_subnet"
    virtual_network_name = "Network1"

  }

  vm2 = {
    vms_name             = "BackendVM"
    location             = "West India"
    resource_group_name  = "rg2"
    subnet_id            = "Backend_subnet"
    vm_size              = "Standard_DS1_v2"
    nic_name             = "NIC2"
    pip_name             = "PublicIp2"
    allocation_method    = "Static"
    subnet_name          = "Backend_subnet"
    virtual_network_name = "Network2"

  }
}

