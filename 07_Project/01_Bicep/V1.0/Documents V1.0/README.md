## **README**

There are a few ways to deploy this architecture. I suggest deploying as mentioned below.

## Requirements for deploying:
- Download and install [Visual Studio Code](https://code.visualstudio.com/download).
- Install the **Azure Account** extension and the **Bicep** extension in VScode(for future developing)

Once installed, you should be able to connect your Azure Account through the extension. This will ensure that all the resources that you deploy will deploy under your subscription.

## Bicep in VScode

If this is all set up, you can start deploying resources by left-clicking and pressing "Deploy Bicep file..." on the bicep files provided. Some Bicep files will have parameters that can be easily adjusted like the names of network and VM's, though there are some restrictions, so I would suggest keeping them like they are for now. 

### **IMPORTANT!**

***One exception here is the admin name and password! These have to be changed!***

## Deploying

When deploying I suggest doing that in the following order:
1. VNET1.bicep
2. VNET2.bicep (insert your own public IP in **MyIP** parameter)
3. VNET1-2 Peering.bicep
4. VNET2-1 Peering.bicep
5. Key Vault.bicep
6. Storage Account.bicep

If there are any issues trying to RDP to the management server, trying redeploying in a different region(West or North Europe)