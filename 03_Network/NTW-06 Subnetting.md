# Subnetting


## Key terminology
- CIDR = Classless Inter Domain Routing, way to notate Subnet Mask Example: 192.168.1.0/24.
- Subnet Mask = Prefix after an IP, to indicate how many bits are used for the network. The leftover bits(32-chosen prefix) are used for host addresses.

## Exercise
- Make a networkarchitecture that has the following requirements:
    - Subnet 1: Private, only accessible within LAN, 15 possible hosts
    - Subnet 2: Private, has access to internet via NAT Gateway, 30 possible hosts
    - Subnet 3: Public, has access to internet via Internet Gateway, 5 possible hosts

### Sources
[Subnet Calculator](https://www.subnet-calculator.com/)

[CIDR](https://nl.wikipedia.org/wiki/Classless_Inter-Domain_Routing)

### Overcome challenges
- Pictured how a connection to a Subnet is made and what is needed
- Got familiar with Subnet Mask
- Learned how to work with diagrams

### Results
![Architecture](../00_includes/NTW-06/SS_Architecture.png)
For the private networks, the 192.168.---.--- range is chosen, because the Subnet Mask can be above /16.

1. First Subnet(Private, only accessible within the LAN):
- The /27 Subnet Mask is chosen, because that provides 30 possible hosts(15), which is more than what is needed, but this way there's room for expansion of the subnet, without it needing to be reconfigured. And there would not have been enough IP's if the 

- There's a switch that is used for ease of access. Switch could be replaced by a router.

2. Second Subnet(Private, with internet access)
- The /26 Subnet Mask is chosen, as this gives us 62 possible hosts(30 needed).
- To get access to the internet, we need a NAT Gateway(to change the private IP to a Public IP) and we need an Internet Gateway, to give us access to the WAN.

3. Third Subnet(Public)
- Here, a /29 Subnet Mask is used, as it gives us exactly enough possible hosts. Because public IP's are very expensive to obtain, the chosen IP range is very tight. If there's going to be more hosts, the Subnet Mask has to be changed.
- All hosts have their own Public IP, so we can connect to the internet via a Internet Gateway.