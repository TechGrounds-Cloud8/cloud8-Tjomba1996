@description('Set the local VNet name')
param existingLocalVirtualNetworkName string = 'management-virtual-network'

@description('Set the remote VNet name')
param existingRemoteVirtualNetworkName string = 'virtualNetwork1'

@description('Sets the remote VNet Resource group')
param existingRemoteVirtualNetworkResourceGroupName string = 'testRG'

resource existingLocalVirtualNetworkName_peering_to_remote_vnet 'Microsoft.Network/virtualNetworks/virtualNetworkPeerings@2021-02-01' = {
  name: '${existingLocalVirtualNetworkName}/peering-to-remote-vnet'
  properties: {
    allowVirtualNetworkAccess: true
    allowForwardedTraffic: true
    allowGatewayTransit: true
    useRemoteGateways: false
    remoteVirtualNetwork: {
      id: resourceId(existingRemoteVirtualNetworkResourceGroupName, 'Microsoft.Network/virtualNetworks', existingRemoteVirtualNetworkName)
    }
  }
}

//https://github.com/Azure/azure-quickstart-templates/blob/master/quickstarts/microsoft.network/existing-vnet-to-vnet-peering/main.bicep
