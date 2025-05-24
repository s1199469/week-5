#
#  See https://www.terraform.io/intro/getting-started/variables.html for more details.
#

#  Change these defaults to fit your needs!

variable "esxi_hostname" {
  default = "192.168.1.11"
}
variable "esxi_hostport" {
  default = "22"
}
variable "esxi_hostssl" {
  default = "443"
}
variable "esxi_username" {
  default = "root"
}
variable "esxi_password" {
  default = "Welkom01!"
}
variable "virtual_network" {
  default = "VM Network"
}
variable "disk_store" {
  default = "IACDatastore"
}
variable "vm1_hostname" {
  default = "webserver"
}
variable "vm2_hostname" {
  default = "databaseserver"
}
variable "vm3_hostname" {
  default = "databaseserver"
}
variable "vm1_group" {
  default = "group1"
}
variable "vm2_group" {
  default = "group1"
}
variable "vm3_group" {
  default = "group1"
}
variable "vm1_memsize" {
  default = "2048"
}
variable "vm2_memsize" {
  default = "2048"
}
variable "vm3_memsize" {
  default = "2048"
}
variable "vm1_numvcpus" {
  default = "1"  
}
variable "vm2_numvcpus" {
  default = "1"  
}
variable "vm3_numvcpus" {
  default = "1"  
}
variable "vm1_count" {
  default = "2"
}
variable "vm2_count" {
  default = "1"
}
variable "vm3_count" {
  default = "1"
}
variable "vm1_user" {
  default = "adminuser"
}
variable "vm2_user" {
  default = "adminuser"
}
variable "vm3_user" {
  default = "adminuser"
}
variable "vm_publickey" {
  default = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHLj0QW8VQfxx9mUMdZevTxPif3fw0VavPP1noc4kgBc student@devhost"]
}
variable "vm1_userconfigfile" {
  type =string
  default = "databaseserver_config.tpl"
}
variable "vm2_userconfigfile" {
  type =string
  default = "databaseserver_config.tpl"
}
variable "vm3_userconfigfile" {
  type =string
  default = "webserver_config.tpl"
}
variable "vm1_role1" {
  type =string
}
variable "vm1_role2" {
  type =string
}
variable "vm1_role3" {
  type =string
}
  variable "vm2_role1" {
  type =string
}
