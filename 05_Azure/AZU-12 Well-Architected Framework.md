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
- **Configuration drift** =
- **chaos engineering practices** =
- Loosely coupled = 
- Serverless = 
- Circuit breakers = 
- Load leveling = 
- Throttling = 
- Canary = 
- Blue-green = 
- Staggered = 
- Telemetry = 

## Exercise
- Study Azure Well-Architected Framework
- How can each pillar be implemented using the cloud?

### Sources
[Azure Well-Architected Framework](https://docs.microsoft.com/en-us/azure/architecture/framework/)

[Reliability](https://docs.microsoft.com/en-us/azure/architecture/framework/resiliency/principles)

[Security](https://docs.microsoft.com/en-us/azure/architecture/framework/security/overview)

[Cost Optimization](https://docs.microsoft.com/en-us/azure/architecture/framework/cost/overview)

[Operational Excellence](https://docs.microsoft.com/en-us/azure/architecture/framework/devops/overview)

[Performance Efficiency](https://docs.microsoft.com/en-us/azure/architecture/framework/scalability/principles)

### Overcome challenges
- Got an overview of a lot of best practices/guidelines to improve all aspects regarding the "Crops" pillars.

### Results

### **Reliability**

- **Design for business requirements:** Applications should be appropriateley reliable. Some applications need to have that 99.9999% SLA, but that is not always necessairy, so plan accordingly.
- **Design for Failire:** Failure is inevitable, so anticipating failures is crucial to developing increased reliability.
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
- **Dynamically allocate and de-allocate resources:** To match performance needs, dynamically allocate and de-allocate resources. Reconfigure, consolidate or shutdown where possible. ***Azure Advisor***
- **Optimize workloads, aim for scalable costs:** The ability to scale dynamically is one of the key features/benefits of the cloud and costs can be saved by doing this automatically. Use metrics and performance to determine the number of instances. Choose smaller instances, for highly variable workload. Scale out, rather than up.
- **Continuously monitor and optimize cost management:** To provision resources dynamically and to scale with demand, you need to do regular cost reviews, measure and forecast capacity needs.

### **Operational Excellence**

Operational Excellence design principles:
- **Optimize build and release processes:** Embrace software engineering disciplines across your entire environment. This includes providing Infrastructure as Code, build and release using CI/CD pipelines, using automated testing method and avoiding configuration drift. This ensures consistency, repetition and early detection of issues.

- **Understand operational health:** Monitor all aspects of your workload. This includes build/release processes, infrastructure health and application health. Proper monitoring enables you to correlate events and take proactive mitigating issues. This also is critical for understanding whether the service meets the business goals.

- **Rehearse recovery and practice failure:** Run DR drills regularly, use chaos engineering practices to identify and solve weak points in reliability, rehearse failure to make sure the recovery processes are effective, document past failures and automate the remedies.

- **Embrace continuous operational improvement:** Strive to reduce complexity and ambiguity. Applying this mindset helps organisations to evolve processes over time, optimize inefficiencies, learn from failures and continuously evaluate new opportunities.

- **Use loosely coupled architecture:**

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