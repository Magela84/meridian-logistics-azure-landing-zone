@description('Azure region for all resources')
param location string = resourceGroup().location

@description('Environment name for tagging and naming')
param environment string = 'dev'

@description('Project name for tagging and naming')
param project string = 'meridian'

@description('SQL Server administrator login')
param sqlAdminLogin string = 'sqladmin'

@description('SQL Server administrator password')
@secure()
param sqlAdminPassword string

@description('SQL Server name override')
param sqlServerName string = 'sql-${project}-${environment}-001'

var sqlDatabaseName = 'sqldb-${project}-${environment}'

resource sqlServer 'Microsoft.Sql/servers@2023-02-01-preview' = {
  name: sqlServerName
  location: location
  properties: {
    administratorLogin: sqlAdminLogin
    administratorLoginPassword: sqlAdminPassword
    version: '12.0'
    publicNetworkAccess: 'Disabled'
  }
  tags: {
    environment: environment
    project: project
    managedBy: 'bicep'
  }
}

resource sqlDatabase 'Microsoft.Sql/servers/databases@2023-02-01-preview' = {
  parent: sqlServer
  name: sqlDatabaseName
  location: location
  sku: {
    name: 'Basic'
    tier: 'Basic'
    capacity: 5
  }
  properties: {
    collation: 'SQL_Latin1_General_CP1_CI_AS'
    maxSizeBytes: 2147483648
  }
  tags: {
    environment: environment
    project: project
    managedBy: 'bicep'
  }
}

output sqlServerName string = sqlServer.name
output sqlServerId string = sqlServer.id
output sqlDatabaseName string = sqlDatabase.name
output sqlServerFqdn string = sqlServer.properties.fullyQualifiedDomainName
