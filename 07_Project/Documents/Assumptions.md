# Assumptions

General:
- Create multiple files of IaC so the overview is better.

Network:
- security group on subnet level
- 2 availability zones
- Region in EU.

Webserver:
- Webserver OS is Linux.
- Autoscaling for webserver.

Management server:
- Single user for management server: admin.
- Admin's home is defined by IP.
- Management Server's OS is Windows.

Script Storage:
- Script storage accessed not more than once time a day.

Key vault:
- Key Vault is used for the the encryption keys only.

Recovery Service Vault:
- Recovery Service Vault is used for Back-ups













## Questions for stakeholders

- admin's home defined by IP? alleen thuis, IP
- IP ranges hard requirement? change 10.20.20.0/24 -> 10.10.20.0/24 for overview purposes mag veranderd worden, documentatie
- admin server meaning the management server. Inloggen ssh, rdp met 
- OS prefence for the servers? RDP? Linux webserver, windows for management
- Databases For back-ups! No just webserver, index.html
- Recovery service Vault? Back-ups
- Application? Just code on github
- Encryption sleutels storage solution
- Script storage, resiliency, niet vaker dan 1 keer per dag, not sure(v1.1)
- Endusers bij webserver, alleen admin binnen management server
- Dichtbij als kan, binnen Europa
- 