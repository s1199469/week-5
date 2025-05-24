#LAB WEEK-4
## Opdracht 1
2x VM met:
- automatisch aangemaakte inventory
- gebruik van roles
- aanmaken van Ansible inventory file met group-variabelen
- uitvoeren Ansible playbook waarbij iedere group de packages krijgt die in de group-variabelen zijn gedefinieerd

# automatisch genereren van Ansible inventory file
Het lukt niet om deze te vullen op basis van servernaam of groep-variabelen. Ik heb de inhoud deels handmatig ingevuld maar wel met gebruik van variabelen. 

# Roles
De in de opdracht opgegeven roles zijn per host-group in variabelen geplaatst. Deze worden in de Ansible-playbook 

#Issues
Het is niet gelukt om de host-groepen in de inventory automatisch te vullen op basis van een vm_group variabelen
Ass work-around heb ik de server-identifiers als array in variabelen geplaatst
locals {
  web_ips=[esxi_guest.Server1[0].ip_address]
  db_ips=[esxi_guest.Server2[0].ip_address]
}

update mysql root passwordlukt niet 
> op backlog