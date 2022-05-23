# Advantages of the Cloud
Nowadays, corporations are continuely switching to a cloud solution to manage all sorts of tasks, that would previously be done by machine on premise. Apparently there's a reason to make that switch.

## Key terminology
- **Availability** = The quality of the computing infrastructure, that let's it function, even when some components fail.
- **Scalability** = The ability of a system to handle increased load; Can be divided into 2 branches:
    - Vertical: Increasing the capacity of a single system.
    - Horizontal: Adding more systems, to increase the capacity.
- **Cluster** = Several nodes of network with a similar purpose, seen as a single unit.
- **Elasticity** = The ability to quickly expand or decrease computer processing, memory, and storage resources to meet changing demands without worrying about capacity planning and engineering for peak usage.
- **Agility** = How efficiently can an IT infrastructure of an external organization respond to external stimuli.

## Exercise
- Study the 6 advantages of cloud computing.
- Study the consumption based model.

### Sources
[Benefits of cloud computing](https://www.hp.com/us-en/shop/tech-takes/top-5-benefits-microsoft-azure)

[High availability](https://cloud.netapp.com/blog/azure-high-availability-basic-concepts-and-a-checklist)

[Scalability](https://docs.microsoft.com/en-us/azure/architecture/framework/scalability/design-scale)

[Horizontal vs Vertical scaling](https://thecodeblogger.com/2020/06/30/understanding-vertical-and-horizontal-scaling-in-azure/)

[Backup and Disaster recovery](https://azure.microsoft.com/en-us/solutions/backup-and-disaster-recovery/#overview)

### Overcome challenges
- Learned specifically why cloud is interesting as a solution

### Results
- There's a few reason why one would switch to a cloud solution, **Azure Cloud** in particular:
    - **High Availability**: Availability can be achieved through a number of means, like redundancy, monitoring and failover. Azure uses the following concepts to implement these means:
        - **Data backup and Recovery**: Through automatic backups, Azure sets up for redundancy, by having multiple locations where the data is stored.
        - **Load Balancing**: This enables routing to more than one system that can serve that traffic. When a system fails, it notices this, and provides an alternative route. Thus implementing both monitoring and failover.
        - **Clustering**: All the nodes in a cluster have the ability to failover to another node, thus implementing more redundancy.

    - **Scalability**: When talking about scalability, there's two branches:
        - **Horizontal Scalability**: Simply adding VM's in Azure provides an easy means of scaling horizontally
        - **Vertical Scalability**: Vertical scalability can be achieved through upgrading through tiers in Azure. However, there is a limit to how many times one can upgrade.

    - **Elasticity**: To achieve elasticity, Azure uses **Autoscaling**. This ensures that one does not pay for idle machines and also ensures that during peak hours(where more processing power might be required) it provides more machines.

    - **Agility**: Azure provides agility in the sense that the "ease of access" and "managing" of all it's recources is very efficient, time-wise. This ensures that the corporations are given the freedom to get what they need and also use their budget as effectively as possible. Lastly, Azure has made a big commitment to **open source**. This allows all languages and frameworks to fit into Azure applications.   

    - **Geo-distribution**: As Azure is a global solution, this enables corporations to store data on more than one location and provided access to applications from around the globe.

    - **Disaster recovery**: The most prominent way to ensure that in case of a disaster, one's data can be recovered, is to make regular backups, which can be done through Azure. This can be done both with VM's as well as on premise machines. One can pick how often a back-up is made and for how long a back-up of a system is kept.

## Consumption-based model
Looking at the consumption-based model, it becomes apparent why it is so appealing to corporations. This is also very intertwined with what Cloud provides as a solution. On premise solution have the downside that it has to be bought, keeping in mind that it needs to be able to "grow", in case of a database server for example. It might not even get used all the time or to it's full capabilities, which would be a waste of money. Now when that is compared to a cloud solution, if more storage space is needed, the server can be upgraded. And if it has too much unused storage space, it can just a easily be downgraded, to cut down in monthly costs.
When analysing, one can see that CAPEX can be shifted to OPEX. This also makes it more appealing for smaller businesses, as the initial payment is much lower, if not zero. And there's little to no downside, as the Cloud can actually grow with the company. Only downside is that managing a Cloud solution, requires some education on how it works.
