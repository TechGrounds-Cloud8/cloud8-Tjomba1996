# Azure Cloud Infrastructure
Everything in the cloud has been virtualized, so when it comes to infrastructure, it is all virtual. However, the physical locations of one's servers, will certainly play an important roll. So deciding on what location is best, is crucial.

## Key terminology
- **Azure Region** = Set of datacenters deployed within an interval-defined perimeter and connected through a dedicated regional low-latency network
- **Azure Availability Zone** = Unique physical locations within an **Azure region** that has it's own power, cooling and networking. This acts as an backup server, to protect applications and data from datacenter failures.
- **Azure Region Pair** = Relationship between 2 **Azure Regions** within the sam geographic region for disaster recovery purposes. In case of a disaster, services will automatically failover to the secondary region.
- **Latency** = the delay before a transfer of data begins following an instruction for its transfer

## Exercise
- What is an Azure Region?
- What is an Azure Availabilty Zone?
- What is an Azure Region Pair?
- Why would you choose a certain region?

### Sources
[What is an Azure Region?](https://cswsolutions.com/blog/posts/2021/september/azure-regions-what-they-are-why-they-matter/)

[What is an Azure Availability Zone?](https://k21academy.com/microsoft-azure/az-303/azure-availability-zones-and-regions/)

[What is an Azure Region Pair](https://build5nines.com/azure-region-pairs-explained/)

[Choosing an Azure Region](https://petri.com/tips-choosing-microsoft-azure-region/)

### Overcome challenges
- Learned about regions, availability zones and region pairs
- Learned what to look for when selecting the optimal Region

### Results
For definitions, see **Key Terminology**.

There's a few things to consider, when choosing a region. The following list will show most of these considerations:
- **Data Export Compliance**: The owner of the data center is important, as certain corporations(Microsoft, Amazone, Google) are US based, and follow the US laws. This allows them to force set corporations to hand over data.
- **Service Availability**: Simply put, not all Azure services are in all available regions.
- **Performance**: Latency is the most prominent way to measure performace, when one is talking about a cloud environment. Lower is better, and generally this is achieved by locating your region closed to wherever one is operating.
- **Cost**: Cost of services differs from region to region, so when performance is not an issue, one might simply go for the cheapest(most times that is USA).
- **Redundancy**: To increase reliability, one might want to see what options a certain region has regarding redudancy. So one region might have more availability regions.
