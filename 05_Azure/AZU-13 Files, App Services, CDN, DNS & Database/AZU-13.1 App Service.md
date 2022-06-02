# App Service
When developing applications, apart from the coding itself, a lot of processes that need to be managed. One of the big reasons why incorporating the cloud in your development process, is that it can handle a lot of those processes for you. This makes sure that all the time investment, can go towards developing the application.

## Key terminology
- **TLS/SSL certificates** = Used to protect both the end users' information while it's in transfer, and to authenticate the website's organization identity to ensure users are interacting with legitimate website owners.

## Exercise
- Study Azure App Services

### Sources
[App Service Overview](https://docs.microsoft.com/en-us/azure/app-service/overview)

[Azure App Service VS Elastic Beanstalk](https://www.cabotsolutions.com/an-in-depth-comparison-between-azure-app-service-and-aws-elastic-beanstalk)

[TLS/SSL certificates](https://www.digicert.com/how-tls-ssl-certificates-work)

### Overcome challenges
- Got insight as to why you would use App Service.
 
### Results

## What is App Service?
Azure App Service is an HTTP-based service for hosting web applications, REST APIs, and mobile back ends. It provides additional features of Microsoft Azure to your application, such as security, load balancing, autoscaling, and automated management.

## Why use App Service?
- With DevOps in mind, things go smoother with features like continuous deployment from Azure DevOps, GitHub, Docker Hub, and other sources, package management, staging environments, custom domain, and TLS/SSL certificates.
- It has support for **multiple languages and frameworks**. This is good for a divers approach.
- App Service automatically **updates and maintains the OS** and language frameworks for you, so you as a customer can spend more time on developing.
- **Dockerize** you app with **containers**, so you can create a sandbox environment for testing purposes.
- **Scale up or out automatically**, with high availability.
- Azure App service has **connection to SaaS platforms and on-premise data**.
- Choose from an extensive list of **application templates** in the Azure Marketplace, such as WordPress, Joomla, and Drupal.
- **Intregation with Visual Studio and Visual Studio Code** streamline the work of creating, deploying, and debugging.
- **App Service provides turn-key CORS support for RESTful API scenarios**, and simplifies mobile app scenarios by enabling authentication, offline data sync, push notifications, and more.
- Azure App service has the **ability to run a script on-demand** without having to explicitly provision or manage infrastructure, and pay only for the compute time your code actually uses.

All and all, when you compare Azure App service to a non-cloud solution, Azure App services outshines in flexibility, ease of use, compatibility and automation.

## Comparison
Azure App service is not the only service that provides a platform for web app hosting. One similar service is provided by AWS, called Elastic Beanstalk. The key differences here are that Azure App service is a fully managed PaaS that integrates a number of services like Microsoft Azure Websites and Mobile Services. While AWS's Elastic Beanstalk provides ease, as it handles the entire process, like capacity provisioning, load balancing, auto-scaling and the monitoring of application performance.