@description('Virtual machine size (has to be at least the size of Standard_A3 to support 2 NICs)')
param virtualMachineSize string = 'Standard_DS1_v2'

@description('Default Admin username')
param adminUsername string = 'Admin-123'

@description('Default Admin password')
@secure()
param adminPassword string = 'Admin-123'

@description('Storage Account type for the VM and VM diagnostic storage')
@allowed([
  'Standard_LRS'
  'Premium_LRS'
])
param storageAccountType string = 'Standard_LRS'

@description('Location for all resources.')
param location string = resourceGroup().location

param MyIP string = '212.187.35.53'

var managementServerName = 'ManagementVM'
var nicName2 = 'nic-2-management'
var virtualNetworkName = 'Management-VNet'
var VNET2subnet1Name = 'subnet-2-management'
var publicIPAddressName = 'publicIp-management'
var diagStorageAccountName = 'mdiags2${uniqueString(resourceGroup().id)}'
var networkSecurityGroupName = 'NSG2-management'

// Imports the VNET with the webserver.
module VNet1 'VNet1.bicep' = {
  name: 'VNet1'
  params: {
    adminPassword: adminPassword
    adminUsername: adminUsername
    location: location
  }
}

// Creates a storage account for the diagnotics of the VM.
resource diagsAccount2 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: diagStorageAccountName
  location: location
  sku: {
    name: storageAccountType
  }
  kind: 'StorageV2'
}

// This is the virtual machine.
resource vm 'Microsoft.Compute/virtualMachines@2020-06-01' = {
  name: managementServerName
  location: location
  properties: {
    osProfile: {
      computerName: managementServerName
      adminUsername: adminUsername
      adminPassword: adminPassword
      windowsConfiguration: {
        provisionVMAgent: true
      }
    }
    hardwareProfile: {
      vmSize: virtualMachineSize
    }
    storageProfile: {
      imageReference: {
        publisher: 'MicrosoftWindowsServer'
        offer: 'WindowsServer'
        sku: '2019-Datacenter'
        version: 'latest'
      }
      osDisk: {
        createOption: 'FromImage'
      }
    }
    networkProfile: {
      networkInterfaces: [
        {
          properties: {
            primary: true
          }
          id: NIC2.id
        }
      ]
    }
    diagnosticsProfile: {
      bootDiagnostics: {
        enabled: true
        storageUri: diagsAccount2.properties.primaryEndpoints.blob
      }
    }
  }
}

// This will build a Virtual Network.
resource vnet 'Microsoft.Network/virtualNetworks@2020-06-01' = {
  name: virtualNetworkName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.20.20.0/24'
      ]
    }
    subnets: [
      {
        name: VNET2subnet1Name
        properties: {
          addressPrefix: '10.20.20.0/24'
        }
      }
    ]
  }
}

// Creates a Network Interface (card).
resource NIC2 'Microsoft.Network/networkInterfaces@2020-06-01' = {
  name: nicName2
  location: location
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig1'
        properties: {
          subnet: {
            id: resourceId('Microsoft.Network/virtualNetworks/subnets', vnet.name, VNET2subnet1Name)
          }
          privateIPAllocationMethod: 'Dynamic'
          publicIPAddress: {
            id: publicIPmanagement.id
          }
        }
      }
    ]
    networkSecurityGroup: {
      id: NSG.id
    }
  }
}

// Creates a Public IP for the NIC.
resource publicIPmanagement 'Microsoft.Network/publicIPAddresses@2020-06-01' = {
  name: publicIPAddressName
  location: location
  properties: {
    publicIPAllocationMethod: 'Dynamic'
  }
}

// Network Security Group (NSG) for your Primary NIC
resource NSG 'Microsoft.Network/networkSecurityGroups@2020-06-01' = {
  name: networkSecurityGroupName
  location: location
  properties: {
    securityRules: [
      {
        name: 'allow-rdp'
        properties: {
          priority: 1000
          sourceAddressPrefix: MyIP
          protocol: 'Tcp'
          destinationPortRange: '3389'
          access: 'Allow'
          direction: 'Inbound'
          sourcePortRange: '*'
          destinationAddressPrefix: '*'
        }
      }
      {
        name: 'allow-ssh'
        properties: {
          priority: 1100
          sourceAddressPrefix: '*'
          protocol: 'Tcp'
          destinationPortRange: '22'
          access: 'Allow'
          direction: 'Outbound'
          sourcePortRange: '*'
          destinationAddressPrefix: '*'
        }
      }
    ]
  }
}
