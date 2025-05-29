 # versie 1.5
 # pas de versie aan om de Github workflow te activeren
 # Details voor de provider
provider "esxi" {
  esxi_hostname      = var.esxi_hostname
  esxi_hostport      = var.esxi_hostport
  esxi_hostssl       = var.esxi_hostssl
  esxi_username      = var.esxi_username
  esxi_password      = var.esxi_password
}

 #    template_file is a great way to pass variables to
 #    cloud-init
data "template_file" "Server1" {
  template = file(var.vm1_userconfigfile)
  vars = {
    HOSTNAME = var.vm1_hostname
    USER = var.vm1_user
    HELLO = "Hello world!"
    KEY=var.vm_publickey
  }
}


 # VM 1
resource "esxi_guest" "Server1" {
  guest_name         = var.vm1_hostname
  disk_store         = var.disk_store
  memsize            = var.vm1_memsize
  numvcpus           = var.vm1_numvcpus
  count              = var.vm1_count
  

ovf_source = "https://cloud-images.ubuntu.com/releases/24.04/release/ubuntu-24.04-server-cloudimg-amd64.ova"

  network_interfaces {
    virtual_network = var.virtual_network
  }
    
 guestinfo = {
   "userdata.encoding" = "gzip+base64"
   "userdata"          = base64gzip(data.template_file.Server1.rendered)
  }
}
 #
 #  Outputs are a great way to output information about your apply.

 # wegschrijven IP adressen in file en aanmaken inventory file
 # van iedere server moet de output handmatig worden toegevoegd aan de array

locals {
  web_ips=[esxi_guest.Server1[0].ip_address]
}
 # aanmaken inventory file
resource "local_file" "ipaddresses" {
   content = <<-EOT
   [${var.vm1_group}]
   %{ for ip in local.web_ips }${ip}
   %{ endfor }
   [${var.vm1_group}:vars]
   vm1_role1=${var.vm1_role1}
   vm1_role2=${var.vm1_role2}
   vm1_role3=${var.vm1_role3}

   # role namen moeten matchen in de ansible-playbook(s)!
   [all:vars]
   ansible_user=ansible
   ansible_ssh_private_key_file=~/.ssh/ansikey
   EOT

   filename = "${path.module}/inventory.ini"
}
 #  Outputs are a great way to output information about your apply.
 #

 # output bij gebruik van count kan charmanter, nog niet gevonden 
 # hoe dat met een for loop zou kunnen
output "ip1" {
  value = esxi_guest.Server1[0].ip_address
}
