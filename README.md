# week-5
## deployment met Github Actions
-----------------------------------------
## Opdracht 1 - Maak playbook waarmee apache 2 wordt geïnstallerd met een andere methode dan de apt-module
Geef in één taak een terugkoppeling als de status **changed:** is en simuleer een foutmelding in een andere taak.

gebruik gemaakt van eerder gemaakte deployments

----
##Issues

----

##status


-----

## Opdracht 2 
- Installeer een lokale Github-runner en voeg deze toe aan de repository
- Richt een Github workflow in
- maak een playbook voor het installeren van een package en plaats deze in een workflow. De code wordt gecheckt in een logische stage. De workflow wordt uitgevoerd als er een push van de code wordt uitgevoerd

-------------
##Issues
*Geen issues*

----

##status
De workflow wordt succesvol uitgevoerd.
 
----


##Opdracht 3
- Rol een eenvoudige VM uit met Terraform en een workflow
- De terraform code wordt gecontroleerd op best practices
- Configureer de workflow zodanig dat de workflow wordt uitgevoerd als een terraform bestand wijzigt
- Maak een workflow die de VM verijderd (op verzoek)

----
##Issues

----
##status

----

De code check bestaat uit de commando's: **terraform validate** en **terraform fmt**

zie: https://developer.hashicorp.com/terraform/cli/commands/validate

https://developer.hashicorp.com/terraform/cli/commands/fmt

**terraform fmt ** past de inhoud van de files aan zodat deze aan de best practices voldoen
