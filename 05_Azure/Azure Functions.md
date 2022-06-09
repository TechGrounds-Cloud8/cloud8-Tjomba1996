# Azure Functions

## Key terminology
- **Custom Handler** = Lightweight web servers that receive events from the Functions host. Any language that supports HTTP primitives can implement a custom handler.

## Exercise

### Sources
[Azure Functions explained](https://docs.microsoft.com/en-us/azure/azure-functions/functions-overview)

[Azure Functions explained(youtube)](https://www.youtube.com/watch?v=Vxf-rOEO1q4)

[Custom Handlers](https://docs.microsoft.com/en-us/azure/azure-functions/functions-custom-handlers)

### Overcome challenges

### Results

## **What is Azure Functions?**
Azure is a solution for easily running small pieces of code or functions in the cloud. It enables you to write code, without having to worry about the whole application or the infrastructure. This improves the overall speed of app developing, as it is a process of automation.

Azure Functions can be used with C#, Java, JavaScript, Powershell or Python, or you can use a custom handler to use any language you want.

## **How do you use Azure Functions?**
- To start using Azure Functions, we navigate to it in the search bar. We select "create Azure Function App". We choose Node.js as our Runtime stack and create the function.

![Create Function App](../00_includes/05_Azure/Azure%20Function/SS_FunctionApp.png)

- Afterwards, we go to Functions to add a HttpTrigger, we test it, and enter "Stranger" as our name to test if the function is working.

![Function Test](../00_includes/05_Azure/Azure%20Function/SS_Test.png)