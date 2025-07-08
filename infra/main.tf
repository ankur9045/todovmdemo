data "azurerm_subnet" "data_subnet" {
    depends_on = [ module.subnet ]
  name                 =  "mr_frountendsbnet1"
  virtual_network_name = "mr_vnet1"
  resource_group_name  = "mr_rg1"
}
module"resources_group_name"{
  source = "../chield/resource_group"
  resource_group_name = "mr_rg1"
    location = "East US"
}
module "virtual_network" {
    depends_on = [ module.resources_group_name ]
  source = "../chield/virtual_network"
  virtual_network_name = "mr_vnet1"
  resource_group_name = "mr_rg1"
    location = "East US"
}
module "subnet" {
    depends_on = [ module.virtual_network ]
    source = "../chield/subnet"
    frountendsbnet_name = "mr_frountendsbnet1"
    resource_group_name = "mr_rg1"
    virtual_network_name = "mr_vnet1"

}
module "public_ip" {
    depends_on = [ module.resources_group_name ]
    source = "../chield/public_ip"
    public_ip_name = "mr_public_ip1"
    resource_group_name = "mr_rg1"
    location = "East US"
    allocation_method = "Static"
  
}
module "virtual_machi" {
    depends_on = [ module.subnet, module.public_ip ]
    source = "../chield/virtual_matchin"
  resource_group_name = "mr_rg1"
  location = "East US"
    network_interface_name = "mr_nic1"
    subnet_id = data.azurerm_subnet.data_subnet.id
    virtual_machine_name = "mr_vm1"
    virtual_machine_size = "Standard_B1s"
    admin_username = "azureuser"
    admin_password = "P@ssword1234"


}