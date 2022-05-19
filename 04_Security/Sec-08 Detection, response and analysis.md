# Detection, response and analysis
While preventing as many intrusions as you possibly can, is good baseline, intrusions are going to happen. There's a few different strategies to apply, when a inevitable intrusion happens.

## Key terminology
- RPO = Recovery Point Objective; How much data is lost on incident
- RTO = Recovery Time Objective; How long does it take to be back online
- IDS = Intrusion Detection System; technology used for detecting vulnerability exploits against a target application or computer
- IPS = Intrusion Prevention System; is a network security/threat prevention technology that examines network traffic flows to detect and prevent vulnerability exploits
- DRP = Disaster Recovery Plan; Set of actions to take to ensure that lost data is restored in case of a disaster
- System Hardening = The process of reducing the vulnerability of a system, by implementing a collection of tools, techniques and best practices. This, to try and reduce the system's attack surface.

## Exercise
- A Company makes daily backups of their database. The database is automatically recovered when a failure happens using the most recent available backup. The recovery happens on a different physical machine than the original database, and the entire process takes about 15 minutes. What is the RPO of the database?
- An automatic failover to a backup web server has been configured for a website. Because the backup has to be powered on first and has to pull the newest version of the website from GitHub, the process takes about 8 minutes. What is the RTO of the website?

### Sources
[IDS](https://www.paloaltonetworks.com/cyberpedia/what-is-an-intrusion-detection-system-ids)

[IPS](https://www.paloaltonetworks.com/cyberpedia/what-is-an-intrusion-prevention-system-ips)

[Hack Response Strategies](https://www.mssbti.com/when-you-are-hacked-incident-response-strategies/)

[Systems Hardening](https://www.beyondtrust.com/resources/glossary/systems-hardening)

### Overcome challenges
- Learned some key terms regarding detection, response and analysis of security breaches

### Results
- The RPO is the amount of data lost on incident. As the company in question, makes daily backups daily, the maximum RPO would be the equivalent of 24 hours worths of data.

- The RTO is the time it takes to be back online, which in this case is simply 8 minutes, before the website could be back online in case of an incident.