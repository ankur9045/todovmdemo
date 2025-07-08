variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  
}
variable "location" {
  
}
variable "network_interface_name" {
  description = "The name of the network interface"
  type        = string
}
variable "subnet_id" {
  description = "The ID of the subnet where the network interface will be created"
  type        = string
  
}
variable "virtual_machine_name" {
  description = "The name of the virtual machine"
  type        = string
  
}
variable "virtual_machine_size" {
  description = "The size of the virtual machine"
  type        = string
  
}
variable "admin_username" {
  description = "The administrator username for the virtual machine"
  type        = string
  
}
variable "admin_password" {
  description = "The administrator password for the virtual machine"
  type        = string
}