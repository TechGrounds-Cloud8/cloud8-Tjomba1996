# Azure App Configuration
With microservices in mind, it can get pretty difficult to manage all the different settings between you resources. For this reason, Azure has developed a service the can help you with that.

## Key terminology
- **Feature Flag** = Software development process used to enable/disable funtionality. New features can be deployed without the users knowing.
- **AKS** = Azure Kubernetes Service
- **ASF** = Azure Service Fabric
- **Azure Key Vault** = Service used to store application secrets.

## Exercise
- Study Azure App Configuration
- Compare Azure App Configuration to similar and old solutions

### Sources
[What is Azure App Configuration?](https://docs.microsoft.com/en-us/azure/azure-app-configuration/overview)

[Feature flag explained](https://launchdarkly.com/blog/what-are-feature-flags/)

### Overcome challenges
- Learned what Azure App Configuration is

### Results

## **What is Azure App Configuration?**
App Configuration can store all the settings for your application and secure their accesses in one place. This provides a centralized location for you to view all the settings and **feature flags**. Below are the key features of Azure App Configuration:
- Fully managed service
- Flexible key representations/mappings
- Tagging with labels
- Point-in-Time replay of settings
- UI for **feature flag** management
- Comparison of two configurations
- Encryption at rest/in transit
- Native integration with popular frameworks

## **Why should you use Azure App Configuration?**
Cloud-based applications often run on multiple virtual machines or containers in multiple regions and use multiple external services. Creating a robust and scalable application in a distributed environment presents a significant challenge. This service can dynamically change app settings without redeploying or restarting and control feature availability in real-time, which makes it very time efficient. This service also complements Azure Key Vault very well, as this can give you a very manageable way to distribute a multitude of hierachical data.

You can use Azure App Configuration with all applications, but the following benefit the most:
- Microservices based on **AKS**, **ASF** or other containerized apps.
- Serverless apps
- CI/CD's
