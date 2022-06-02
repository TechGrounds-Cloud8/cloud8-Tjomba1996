# Well-Architected Framework
It is in the best interest of Cloud providers that customers have reliable and secure applications running on the Cloud's infrastructure. To give customers some guidelines, as to how to achieve these specific characteristics, the Well-Architected Framework was introduced. This is based on the 5 pillars of "Crops":
- **Reliability** 
- **Security** 
- **Cost Optimization** 
- **Operational Excellence**
- **Performance Efficiency** 

As a cloud engineer, it is mandatory, to be able to use all the available options within the cloud, to create an application using the Well-Architected Framework.

## Key terminology

- **Reliability:** The ability of a system to recover from failures and continue to function.
- **Security:** Protecting applications and data from threats.
- **Cost Optimization:** Managing costs to maximize the value delivered.
- **Operational Excellence:** Operations processes that keep a system running in production.
- **Performance Efficiency:** The ability of a system to adapt to changes in load.

- **Configuration drift** = An environment in which running clusters in an infrastructure become increasingly different over time, usually due to manual changes and updates on individual clusters.
- **Chaos engineering** = Process of testing a distributed computing system to ensure that it can withstand unexpected disruptions, with chaos theory as underlying concept. Think about random numbers and unexpected actions.
- **Loosely coupled** = Refering to a relationship, where to connection is breakable, so if one component changes, it has little to no impact on the other component.
- **Serverless** = Refering to an architecture that allows developers to build and run services, without having to worry about the infrastructure. This is taking over by a cloud provider.
- **Circuit breakers** = Circuit Breaker pattern ensures your cloud application continues to function if a service outage occurs in a part of the application.
- **Throttling** = Allows a system to control both internal and external traffic that might compromise a system's ability to operate in a safe and predictable manner.
- **Canary** = Way to reduce risk and check new software by releasing it to a small portion.
- **Blue-green** = Deployment technique that reduces downtime and risk by running two identical production environments called Blue and Green.
- **Telemetry** = The automatic recording and transmission of data from remote or inaccessible sources to an IT system in a different location for monitoring and analysis.

## Exercise
- Study Azure Well-Architected Framework
- How can each pillar be implemented using the cloud?

### Sources
[Azure Well-Architected Framework](https://docs.microsoft.com/en-us/azure/architecture/framework/)

[Reliability](https://docs.microsoft.com/en-us/azure/architecture/framework/resiliency/principles)

[Reliability Services](https://azure.microsoft.com/en-us/features/reliability/#overview)

[Azure Chaos Studio](https://docs.microsoft.com/en-us/azure/chaos-studio/chaos-studio-overview)

[Azure Service Health ](https://docs.microsoft.com/en-us/azure/service-health/service-health-overview)

[Azure Monitor](https://www.serverless360.com/microsoft-azure-monitoring#:~:text=What%20is%20Azure%20Monitor%3F,cloud%20and%20on%2Dpremises%20environments.)

[Network Watcher](https://azure.microsoft.com/en-us/services/network-watcher/#features)

[Security](https://docs.microsoft.com/en-us/azure/architecture/framework/security/overview)

[Security Services](https://azure.microsoft.com/en-us/overview/security/)

[Microsoft Defender for Cloud](https://docs.microsoft.com/en-us/azure/defender-for-cloud/defender-for-cloud-introduction)

[Application Gateway](https://docs.microsoft.com/en-us/azure/application-gateway/overview)

[Azure DDoS Protection](https://azure.microsoft.com/en-us/pricing/details/ddos-protection/)

[Key Vault](https://docs.microsoft.com/en-us/azure/key-vault/secrets/quick-create-portal)

[Azure Information Protection](https://docs.microsoft.com/en-us/azure/information-protection/what-is-information-protection)

[Cost Optimization](https://docs.microsoft.com/en-us/azure/architecture/framework/cost/overview)

[Cost Optimization Services](https://azure.microsoft.com/en-us/overview/cost-optimization/#tools)

[Cost Management](https://azure.microsoft.com/en-us/services/cost-management/)

[Azure Pricing Calculator](https://azure.microsoft.com/en-us/pricing/calculator/?cdn=disable)

[Azure TCO Calculator](https://azure.microsoft.com/en-us/pricing/tco/)

[Operational Excellence](https://docs.microsoft.com/en-us/azure/architecture/framework/devops/overview)

[Performance Efficiency](https://docs.microsoft.com/en-us/azure/architecture/framework/scalability/principles)

[Configuration Drift](https://www.fairwinds.com/blog/configuration-drift-kubernetes#:~:text=Configuration%20drift%20refers%20to%20an,and%20updates%20on%20individual%20clusters.)

[Chaos Engineering](https://www.techtarget.com/searchitoperations/definition/chaos-engineering)

[Loosely coupled](https://en.wikipedia.org/wiki/Loose_coupling)

[Serverless](https://www.datadoghq.com/knowledge-center/serverless-architecture/)

[Canary](https://www.techtarget.com/whatis/definition/canary-canary-testing)

[Throttling](https://www.redhat.com/architect/pros-and-cons-throttling)

[Blue-Green](https://docs.cloudfoundry.org/devguide/deploy-apps/blue-green.html)

[Telemetry](https://stackify.com/telemetry-tutorial/)

### Overcome challenges
- Got an overview of a lot of best practices/guidelines to improve all aspects regarding the "Crops" pillars.
- Learned what services are essential for "Crops"

## Results

### **Reliability**

- **Design for business requirements:** Applications should be appropriateley reliable. Some applications need to have that 99.9999% SLA, but that is not always necessary, so plan accordingly.
- **Design for Failure:** Failure is inevitable, so anticipating failures is crucial to developing increased reliability.
- **Observe application health:** By monitoring applications, you can detect and predict reliability issues.
- **Drive Automation:** Human error is one of the leading causes in downtime, so striving for automation can increase reliability.
- **Design for self-healing:** This is the ability for the system to deal with failures automatically, by handling them with predefined remediation protocols. This does require a high level of system maturity with monitoring and automation.
- **Design for scale-out:** Focusing on the ability of a system to respond to demand through horizontal growth, by increasing the amount of units, rather than increasing the size of existing ones. This can increase reliability when dealing with unexpected increases in traffic, and also increase reliability, by making the failure of one resource less impactful.

### **Security**

Security principles with their corresponding recommendations:
- **Plan resources and how to harden them:** 
    - Consider security when planning workload resources.
    - Understand how individual cloud services are protected.
    - Use a service enablement framework to evaluate.
- **Automate and use of least privilege:**
    - Implement least privilege throughout the application and control plane to protect against data exfiltration and malicious actor scenarios.
    - Drive automation to minimize the need for human interaction.
- **Classify and encrypt data:**
    - Classify data according to risk.
    - Apply industry-standard encryption at rest and in transit, which ensures keys and certificates are stored securely and managed properly.
- **Monitor system security, plan incident response:**
    - Correlate security and audit events to model application health.
    - Correlate security and audit events to identify active threats.
    - Establish automated and manual procedures to respond to incidents.
    - Use security information and event management (SIEM) tooling for tracking.
- **Identify and protect endpoints:**
    - Monitor and protect the network integrity of internal and external endpoints through security appliances or Azure services, such as Firewalls and Web Application firewalls.
    - Use industry standard approaches to protect against common attack vectors, such as distributed denial of service (DDoS) attacks like SlowLoris.
- **Protect against code-level vulnerabilities:**
    - Identify and mitigate code-level vulnerabilities, such as cross-site scripting and structured query language (SQL) injection.
    - In the operational lifecycle, regularly incorporate Security fixes and codenasse/dependency patching.
- **Model and test against potential threats:**
    - Establish procedures to identify and mitigate known threats.
    - Use penetration testing to verify threat mitigation.
    - Use static code analysis to detect and prevent future vulnerabilities.
    - Use code scanning to detect and prevent future vulnerabilities.

### **Cost Optimization**

Cost optimization design principles:
- **Choose the correct resources:** Choose resources that can handle the performance of the workload, but also are aligned with the business goals. See where cloud native offerings are possible. Often times, it's more efficient to get SaaS or PaaS, instead of IaaS. An inappropriate or misconfigured service can affect cost, so be critical in your judgement.
- **Set up budgets and maintain cost constraints:** Every design choice has cost implications, so considering the budget restraints is key before choosing any major aspects.
- **Dynamically allocate and de-allocate resources:** To match performance needs, dynamically allocate and de-allocate resources. Reconfigure, consolidate or shutdown where possible.
- **Optimize workloads, aim for scalable costs:** The ability to scale dynamically is one of the key features/benefits of the cloud and costs can be saved by doing this automatically. Use metrics and performance to determine the number of instances. Choose smaller instances, for highly variable workload. Scale out, rather than up.
- **Continuously monitor and optimize cost management:** To provision resources dynamically and to scale with demand, you need to do regular cost reviews, measure and forecast capacity needs.

### **Operational Excellence**

Operational Excellence design principles:
- **Optimize build and release processes:** Embrace software engineering disciplines across your entire environment. This includes providing Infrastructure as Code, build and release using CI/CD pipelines, using automated testing method and avoiding configuration drift. This ensures consistency, repetition and early detection of issues.

- **Understand operational health:** Monitor all aspects of your workload. This includes build/release processes, infrastructure health and application health. Proper monitoring enables you to correlate events and take proactive mitigating issues. This also is critical for understanding whether the service meets the business goals.

- **Rehearse recovery and practice failure:** Run DR drills regularly, use chaos engineering practices to identify and solve weak points in reliability, rehearse failure to make sure the recovery processes are effective, document past failures and automate the remedies.

- **Embrace continuous operational improvement:** Strive to reduce complexity and ambiguity. Applying this mindset helps organisations to evolve processes over time, optimize inefficiencies, learn from failures and continuously evaluate new opportunities.

- **Use loosely coupled architecture:** Using modern architecture patterns like microservices, loosely coupled and serverless, pair these with cloud design patterns like Circuit breakers, Load-Leveling and throttling, and advanced deployment strategies like Canary, Blue-green and staggered, you enable teams to develop services individually. This minimizes the impact on one another.

### **Performance efficiency principles**

- **Understand the challenges of distributed architectures:** With distributed architectures, troubleshooting is complex and challenging because of various factors. So the team should be familiar with the necessary expertise to troubleshoot all services in your architecture.

- **Run performance testing in the scope of development:** Test to make sure that any change, however small, doesn't impact the applications performance in a negative manner.
    - **Establish performance baselines:** Determine the current efficiency of the application. Measuring performance against baselines can provide strategies for improvements and determine if the application is meeting the business goals.
    - **Run load and stress tests:** Load testing measures your application's performance under predetermined amounts of load. Stress testing measures the maximum load your application and its infrastructure can support before it buckles.
    - **Identify bottlenecks:** Bottlenecks is an area within your application that can hinder performance. These spots can be the result of shortages in code or misconfiguration of a service. Typically, a bottleneck worsens as load increases.

- **Continuously monitor the application and the supporting infrastructure:**
    - **Data-driven approach:** Base your decisions on the data captured from repeatable processes. Archive data to monitor performance changes over time, not just compared to the last measurement taken.
    - **Monitor the health of current workloads:** In monitoring strategy, consider scalability and resiliency of the infrastructure, application, and dependent services. For scalability, look at the metrics that would allow you to provision resources dynamically and scale with demand. For reliability, look for early warning signs that might require proactive intervention.
    - **Troubleshoot performance issues:** Issues in performance can arise from database queries, connectivity between services, under-provisioned resources, or memory leaks in code. Application telemetry and profiling can be useful tools for troubleshooting your application.

- **Identify improvement opportunities with resolution planning:** Understand the scope of your planned resolution and communicate the changes to all necessary individuals. 

- **Invest in capacity planning:** Plan for fluctuation in expected load that can occur because of world events. Ensure that the application can scale to both expected an unexpected workload.

## **Implementation of "Crops" using services**

First of all, Azure Advisor analyzes your configurations and usage telemetry and offers personalized recommendations to help optimize your resources for all 5 of the pillars. You can take a step deeper, and use Azure Well-architected review to get more specific options and recommendations on your current architecture.

### **Reliability**

- **Azure Chaos Studio:** This service uses chaos engineering to measure understand and imprive your cloud application.
- **Azure Service Health:** Service Health provides you with a customizable dashboard which tracks the health of your Azure services in the regions where you use them. You can use this to set up alerts which notify you when service issues affect you, before they happen.
- **Azure Monitor:** Azure Monitor is a powerful reporting and analytics tool. It maximizes the availability and performance of your applications by collecting, analyzing, and acting on telemetry from your cloud and on-premises environments. It helps you understand how your applications are performing and proactively identifies issues affecting them and the resources they depend on.
- **Network Watcher:** Network Watcher provides you the ability to diagnose your most common VPN Gateway and Connections issues. Allowing you, not only, to identify the issue but also to use the detailed logs created to help further investigate.

**Security**

- **Microsoft Defender for Cloud:** Defender for Cloud offers security alerts that are powered by Microsoft Threat Intelligence. It also includes a range of advanced, intelligent, protections for your workloads. The workload protections are provided through Microsoft Defender plans specific to the types of resources in your subscriptions.
- **Application Gateway:** Azure Application Gateway is a web traffic load balancer that enables you to manage traffic to your web applications. Traditional load balancers operate at the transport layer (OSI layer 4 - TCP and UDP) and route traffic based on source IP address and port, to a destination IP address and port.
- **Azure DDoS Protection:** DDoS Protection enables you to protect your Azure resources from denial of service (DoS) attacks with always-on monitoring and automatic network attack mitigation. There is no upfront commitment, and your total cost scales with your cloud deployment.
- **Key Vault:** Azure Key Vault is a cloud service that provides a secure store for secrets. You can securely store keys, passwords, certificates, and other secrets.
- **Azure Information Protection:** Azure Information Protection (AIP) is a cloud-based solution that enables organizations to discover, classify, and protect documents and emails by applying labels to content.

**Cost Optimization**
- **Microsoft Cost Management:** This services enables you to monitore and analyze all the expenditures. This also enables you to set alerts and allocate budgets to teams.
- **Azure Pricing Calculator:** Helps you calculate your estimated hourly or monthly costs using Azure.
- **TCO Calculator:** This calculator compares an architecture on premise with a comparable solution in the cloud, to give you an insights, as to what the benefits would be when you transition.