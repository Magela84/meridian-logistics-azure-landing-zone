@description('Azure region for all resources')
param location string = resourceGroup().location

@description('Environment name for tagging and naming')
param environment string = 'dev'

@description('Project name for tagging and naming')
param project string = 'meridian'

@description('Storage account SKU')
param storageSku string = 'Standard_LRS'

var storageAccountName = 'st${project}${environment}001'

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: storageSku
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
    supportsHttpsTrafficOnly: true
    minimumTlsVersion: 'TLS1_2'
    allowBlobPublicAccess: false
  }
  tags: {
    environment: environment
    project: project
    managedBy: 'bicep'
  }
}

resource blobContainer 'Microsoft.Storage/storageAccounts/blobServices/containers@2023-01-01' = {
  name: '${storageAccount.name}/default/documents'
  properties: {
    publicAccess: 'None'
  }
}

output storageAccountName string = storageAccount.name
output storageAccountId string = storageAccount.id
output blobEndpoint string = storageAccount.properties.primaryEndpoints.blob
