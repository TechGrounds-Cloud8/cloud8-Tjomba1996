@description('Set the local VNet name')
param existingLocalVirtualNetworkName string = 'Management-VNet'

@description('Set the remote VNet name')
param existingRemoteVirtualNetworkName string = 'Webserver-VNet'

@description('Sets the remote VNet Resource group')
param existingRemoteVirtualNetworkResourceGroupName string = resourceGroup().name

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
