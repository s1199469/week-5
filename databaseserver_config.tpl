#cloud-config
packages:
  - wget
  - ntpdate
users:
  - default
  - name: ${USER}
    sudo: ALL=(ALL) NOPASSWD:ALL
    # een list in tfvars file is nog niet gelukt

    ssh_authorized_keys:
      - ${KEY}
    shell: /bin/bash
runcmd:
  - hostnamectl set-hostname ${HOSTNAME}
  - date >>/root/cloudinit.log
  - echo ${HELLO} >>/root/cloudinit.log
