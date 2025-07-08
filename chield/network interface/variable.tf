variable "nic_name"{
    description = "Name of the Network Interface"
    type = string   

}
variable "location" {
    description = "Location for the Network Interface"
    type = string
}
variable "resource_group_name" {
    description = "Name of the Resource Group"
    type = string
}
variable "subnet_id" {
    description = "ID of the Subnet where the Network Interface will be created"
    type = string
}