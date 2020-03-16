variable "rs_location" {
  description = "The Azure location where the Resource Group should be located"
}

variable "subscription_id" {
  
}
variable "dns_prefix" {}
variable "vm_name" {}
variable "vnet_cidr" {}
variable "range" {
    type = "map"
    default = {
        sub1 = "24"
        sub2 = "28"
    }
  
}




variable "rg_name" {}

variable "username" {}
variable "password" {}

variable "nginx_az_tags" {
  type = "map"

  default = {
    POD_CIDR    = "10.0.0.0/16"
    environment = "Dev"
    web_Server  = "nginx"
  }
}

