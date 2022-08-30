# **Design**

I was tasked with recreating the following architecture:

![Provided architecture](../../../Includes/Architecture_On-prem.png)

Additionally, the following requirements had to be met:
- [All VM disks have to be encrypted.](../../../Includes/Disk_Encryption.png) 
- [The webserver needs daily back-up. Back-up need to be stored for 7 days.](../../../Includes/VM_BackUp.png)
- [The webserver needs to be installed in an automatic fashion.](../../../Includes/SS_UserData.png)
- [The admin/management server has to be reachable with a public IP.](../../../Includes/SSH_terminal.png)
- [The admin/management server can only be accessed from trusted locations(office/admin's home).](../../../Includes/NSG_IP_Requirement.png)
- The following IP-ranges can be used: [10.10.10.0/24](../../../Includes/VNET1_IP_Range.png) & [10.20.20.0/24](../../../Includes/VNET2_IP_Range.png).
- All subnets need firewall protection on subnet level:
    - [Webserver Network Rules](../../../Includes/NSG1_Rules.png)
    - [Management Network Rules](../../../Includes/NSG_Management_Rules.png)
- [SSH or RDP connections with the webserver only allowed via the admin server.](../../../Includes/NSG1_Rules.png)
- [Needs a storage solution for bootstrap/post-deployment scripts that can not be accessed by the public.](../../../Includes/StorageAccount_Public_Access.png)

## Design choices

A few choices had to be made, either to reduce cost or to make things easier to develop or manage.

### **Disk**

For the encryption, I opted for a managed key. While a managed disk is more expensive, compared to an unmanaged disk, it is way easier to use for encryption.

### **Firewall**

For security, I opted for a Network Security Group(NSG), instead of a Firewall. In this case, the Firewall would cost around €30,- a day, which would be way over budget. Adding a few rules to the NSG gives sufficient protection for this application.

### **Cost**

The daily costs for this architecture are going to vary slightly, as some services are dependend of traffic. But a rough estimate for this application would be **€3,- a day**.

The total cost of development was **€15,50 over a course of 2 months.**