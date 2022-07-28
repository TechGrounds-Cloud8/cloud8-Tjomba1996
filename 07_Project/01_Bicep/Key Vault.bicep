param location string = resourceGroup().location
param key_vault_name string = 'key-vault-1-27-07-202123'

var tenantID = subscription().tenantId
var objectID = 'f9a8410d-0830-4f7f-8af5-5b31d1f0d1da'

resource keyVault 'Microsoft.KeyVault/vaults@2021-10-01' = {
  name: key_vault_name
  location: location
  properties: {
    enabledForDeployment: true
    enabledForTemplateDeployment: true
    enabledForDiskEncryption: true
    tenantId: tenantID
    accessPolicies: [
      {
        tenantId: tenantID
        objectId: objectID
        permissions: {
          keys: [
            'get'
          ]
          secrets: [
            'list'
            'get'
          ]
        }
      }
    ]
    sku: {
      name: 'standard'
      family: 'A'
    }
  }
}
