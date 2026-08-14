@secure()
param vulnerabilityAssessments_Default_storageContainerPath string
param servers_sql_slipwell_team2_name string = 'sql-slipwell-team2'
param sites_slipwell_report_function_name string = 'slipwell-report-function'
param namespaces_ehns_team2_market_name string = 'ehns-team2-market'
param streamingjobs_asa_ohlcv_name string = 'asa-ohlcv'
param workspaces_dbw_slipwell_team2_name string = 'dbw-slipwell-team2'
param virtualMachines_simulator_machine_name string = 'simulator-machine'
param serverfarms_ASP_dt4project2team2_a399_name string = 'ASP-dt4project2team2-a399'
param accounts_slipwell_openai_name string = 'slipwell-openai'
param sshPublicKeys_simulator_machine_keyS_name string = 'simulator-machine_keyS'
param components_slipwell_report_function_name string = 'slipwell-report-function'
param storageAccounts_slipwellreportstorage_name string = 'slipwellreportstorage'
param publicIPAddresses_simulator_machine_ip_name string = 'simulator-machine-ip'
param virtualNetworks_simulator_machine_vnet_name string = 'simulator-machine-vnet'
param networkInterfaces_simulator_machine826_z1_name string = 'simulator-machine826_z1'
param networkSecurityGroups_simulator_machine_nsg_name string = 'simulator-machine-nsg'
param smartdetectoralertrules_failure_anomalies_slipwell_report_function_name string = 'failure anomalies - slipwell-report-function'
param actiongroups_application_insights_smart_detection_externalid string = '/subscriptions/27db5ec6-d206-4028-b5e1-6004dca5eeef/resourceGroups/a000-aml-rg/providers/microsoft.insights/actiongroups/application insights smart detection'
param workspaces_DefaultWorkspace_27db5ec6_d206_4028_b5e1_6004dca5eeef_SE_externalid string = '/subscriptions/27db5ec6-d206-4028-b5e1-6004dca5eeef/resourceGroups/DefaultResourceGroup-SE/providers/Microsoft.OperationalInsights/workspaces/DefaultWorkspace-27db5ec6-d206-4028-b5e1-6004dca5eeef-SE'

resource accounts_slipwell_openai_name_resource 'Microsoft.CognitiveServices/accounts@2026-03-01' = {
  name: accounts_slipwell_openai_name
  location: 'koreacentral'
  sku: {
    name: 'S0'
  }
  kind: 'OpenAI'
  properties: {
    apiProperties: {}
    customSubDomainName: accounts_slipwell_openai_name
    networkAcls: {
      defaultAction: 'Allow'
      virtualNetworkRules: []
      ipRules: []
    }
    allowProjectManagement: false
    publicNetworkAccess: 'Enabled'
    storedCompletionsDisabled: false
  }
}

resource sshPublicKeys_simulator_machine_keyS_name_resource 'Microsoft.Compute/sshPublicKeys@2025-11-01' = {
  name: sshPublicKeys_simulator_machine_keyS_name
  location: 'koreacentral'
  properties: {
    publicKey: 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCjoNgwQs0Jp0BilVDSsLulgGdKDtS58mYVrQu6PdVNhxWYVN3aDn/MSCi2ZMtWIcXwGLMCqQGS2/qAinBpJW8XmzxyFSq2ec/tRc9/BPt4bonkkmubt+yLyrlhh7jSd8hnHRa0ut7MP9c8JYXOJ0foPXBLqgVqkNpc+Nx9qieM0amkRH9BXaCW/tDewuvXfNiyuhBLzLy/NeYYfjyEnPtaD1/d+e4wU1Kx6grfpKp7xUAQgbO/LvjuP+EmLiUcnIN82yciBM7J9wAhnETxxhZzIa4XLuU/xlnRshBhtUlmUblCAHnu/TUZKRYZTJ0G+pwMyUMLk+bPkv6LSdnKxZk6wZWVMSUdjq0wK56Gid4LWSvtDtYcuo0GlfOfBFPidQz+fBFzXbZl3m0AcXlQ2T2wTYJsVj10ZMcx+1oOg9EsCYkr/tJwWC6AwojcYYe6b5XfM40oxZr1FIM6vJmy4GoM2jFYjI+kQ076r0cNaWXKr12+cbyQG7lNlqLVQ+vjqVU= generated-by-azure'
  }
}

resource workspaces_dbw_slipwell_team2_name_resource 'Microsoft.Databricks/workspaces@2026-01-01' = {
  name: workspaces_dbw_slipwell_team2_name
  location: 'koreacentral'
  sku: {
    name: 'trial'
  }
  properties: {
    computeMode: 'Hybrid'
    defaultCatalog: {
      initialType: 'UnityCatalog'
    }
    managedResourceGroupId: '/subscriptions/27db5ec6-d206-4028-b5e1-6004dca5eeef/resourceGroups/managed-${workspaces_dbw_slipwell_team2_name}'
    parameters: {
      enableNoPublicIp: {
        type: 'Bool'
        value: true
      }
      prepareEncryption: {
        type: 'Bool'
        value: false
      }
      requireInfrastructureEncryption: {
        type: 'Bool'
        value: false
      }
      storageAccountName: {
        type: 'String'
        value: 'dbstoragen3kun7xzhiixq'
      }
      storageAccountSkuName: {
        type: 'String'
        value: 'Standard_ZRS'
      }
    }
    authorizations: [
      {
        principalId: '9a74af6f-d153-4348-988a-e2672920bee9'
        roleDefinitionId: '8e3af657-a8ff-443c-a75c-2fe8c4bcb635'
      }
    ]
    createdBy: {}
    updatedBy: {}
  }
}

resource namespaces_ehns_team2_market_name_resource 'Microsoft.EventHub/namespaces@2026-01-01' = {
  name: namespaces_ehns_team2_market_name
  location: 'koreacentral'
  sku: {
    name: 'Standard'
    tier: 'Standard'
    capacity: 1
  }
  properties: {
    platformCapabilities: {
      confidentialCompute: {
        mode: 'Disabled'
      }
    }
    geoDataReplication: {
      maxReplicationLagDurationInSeconds: 0
      locations: [
        {
          locationName: 'koreacentral'
          roleType: 'Primary'
        }
      ]
    }
    minimumTlsVersion: '1.2'
    publicNetworkAccess: 'Enabled'
    disableLocalAuth: false
    zoneRedundant: true
    isAutoInflateEnabled: true
    maximumThroughputUnits: 5
    kafkaEnabled: true
  }
}

resource components_slipwell_report_function_name_resource 'microsoft.insights/components@2020-02-02' = {
  name: components_slipwell_report_function_name
  location: 'koreacentral'
  kind: 'web'
  properties: {
    Application_Type: 'web'
    Flow_Type: 'Redfield'
    Request_Source: 'IbizaWebAppExtensionCreate'
    RetentionInDays: 90
    WorkspaceResourceId: workspaces_DefaultWorkspace_27db5ec6_d206_4028_b5e1_6004dca5eeef_SE_externalid
    IngestionMode: 'LogAnalytics'
    publicNetworkAccessForIngestion: 'Enabled'
    publicNetworkAccessForQuery: 'Enabled'
    DisableLocalAuth: false
  }
}

resource networkSecurityGroups_simulator_machine_nsg_name_resource 'Microsoft.Network/networkSecurityGroups@2025-05-01' = {
  name: networkSecurityGroups_simulator_machine_nsg_name
  location: 'koreacentral'
  properties: {
    securityRules: [
      {
        name: 'SSH'
        id: networkSecurityGroups_simulator_machine_nsg_name_SSH.id
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '22'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 300
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'react'
        id: networkSecurityGroups_simulator_machine_nsg_name_react.id
        properties: {
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '5173'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 200
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'dash'
        id: networkSecurityGroups_simulator_machine_nsg_name_dash.id
        properties: {
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '8050'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 100
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'api'
        id: networkSecurityGroups_simulator_machine_nsg_name_api.id
        properties: {
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '8000'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 250
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'Allow-HTTP-80'
        id: networkSecurityGroups_simulator_machine_nsg_name_Allow_HTTP_80.id
        properties: {
          description: 'Nginx'
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '80'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 1000
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
  }
}

resource publicIPAddresses_simulator_machine_ip_name_resource 'Microsoft.Network/publicIPAddresses@2025-05-01' = {
  name: publicIPAddresses_simulator_machine_ip_name
  location: 'koreacentral'
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }
  zones: [
    '1'
  ]
  properties: {
    ipAddress: '20.196.158.79'
    publicIPAddressVersion: 'IPv4'
    publicIPAllocationMethod: 'Static'
    idleTimeoutInMinutes: 4
    ipTags: []
    ddosSettings: {
      protectionMode: 'VirtualNetworkInherited'
    }
  }
}

resource virtualNetworks_simulator_machine_vnet_name_resource 'Microsoft.Network/virtualNetworks@2025-05-01' = {
  name: virtualNetworks_simulator_machine_vnet_name
  location: 'koreacentral'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.2.0.0/16'
      ]
    }
    privateEndpointVNetPolicies: 'Disabled'
    subnets: [
      {
        name: 'default'
        id: virtualNetworks_simulator_machine_vnet_name_default.id
        properties: {
          addressPrefix: '10.2.0.0/24'
          delegations: []
          privateEndpointNetworkPolicies: 'Disabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
      }
    ]
    virtualNetworkPeerings: []
    enableDdosProtection: false
  }
}

resource servers_sql_slipwell_team2_name_resource 'Microsoft.Sql/servers@2025-02-01-preview' = {
  name: servers_sql_slipwell_team2_name
  location: 'koreacentral'
  kind: 'v12.0'
  properties: {
    administratorLogin: 'sqladminuser'
    version: '12.0'
    minimalTlsVersion: '1.2'
    publicNetworkAccess: 'Enabled'
    restrictOutboundNetworkAccess: 'Disabled'
    retentionDays: -1
  }
}

resource storageAccounts_slipwellreportstorage_name_resource 'Microsoft.Storage/storageAccounts@2026-04-01' = {
  name: storageAccounts_slipwellreportstorage_name
  location: 'koreacentral'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  kind: 'StorageV2'
  properties: {
    defaultToOAuthAuthentication: true
    publicNetworkAccess: 'Enabled'
    allowCrossTenantReplication: false
    minimumTlsVersion: 'TLS1_2'
    allowBlobPublicAccess: false
    allowSharedKeyAccess: true
    networkAcls: {
      ipv6Rules: []
      bypass: 'None'
      virtualNetworkRules: []
      ipRules: []
      defaultAction: 'Allow'
    }
    supportsHttpsTrafficOnly: true
    encryption: {
      services: {
        file: {
          keyType: 'Account'
          enabled: true
        }
        blob: {
          keyType: 'Account'
          enabled: true
        }
      }
      keySource: 'Microsoft.Storage'
    }
    accessTier: 'Hot'
  }
}

resource streamingjobs_asa_ohlcv_name_resource 'Microsoft.StreamAnalytics/streamingjobs@2021-10-01-preview' = {
  name: streamingjobs_asa_ohlcv_name
  location: 'Korea Central'
  tags: {
    'hidden-link:/Microsoft.StreamAnalytics/streamingjobs/settings': '{"createdFrom":"Portal"}'
  }
  sku: {
    name: 'StandardV2'
    capacity: 10
  }
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    sku: {
      name: 'StandardV2'
    }
    outputStartMode: 'JobStartTime'
    outputStartTime: '2026-07-05T04:23:03.957Z'
    eventsOutOfOrderPolicy: 'Adjust'
    outputErrorPolicy: 'Drop'
    eventsOutOfOrderMaxDelayInSeconds: 0
    eventsLateArrivalMaxDelayInSeconds: 5
    dataLocale: 'en-US'
    compatibilityLevel: '1.2'
    contentStoragePolicy: 'SystemAccount'
    jobType: 'Cloud'
  }
}

resource serverfarms_ASP_dt4project2team2_a399_name_resource 'Microsoft.Web/serverfarms@2024-11-01' = {
  name: serverfarms_ASP_dt4project2team2_a399_name
  location: 'Korea Central'
  sku: {
    name: 'FC1'
    tier: 'FlexConsumption'
    size: 'FC1'
    family: 'FC'
    capacity: 0
  }
  kind: 'functionapp'
  properties: {
    perSiteScaling: false
    elasticScaleEnabled: false
    maximumElasticWorkerCount: 1
    isSpot: false
    reserved: true
    isXenon: false
    hyperV: false
    targetWorkerCount: 0
    targetWorkerSizeId: 0
    zoneRedundant: false
    asyncScalingEnabled: false
  }
}

resource smartdetectoralertrules_failure_anomalies_slipwell_report_function_name_resource 'microsoft.alertsmanagement/smartdetectoralertrules@2021-04-01' = {
  name: smartdetectoralertrules_failure_anomalies_slipwell_report_function_name
  location: 'global'
  properties: {
    description: 'Failure Anomalies notifies you of an unusual rise in the rate of failed HTTP requests or dependency calls.'
    state: 'Enabled'
    severity: 'Sev3'
    frequency: 'PT1M'
    detector: {
      id: 'FailureAnomaliesDetector'
    }
    scope: [
      components_slipwell_report_function_name_resource.id
    ]
    actionGroups: {
      groupIds: [
        actiongroups_application_insights_smart_detection_externalid
      ]
    }
  }
}

resource accounts_slipwell_openai_name_Default 'Microsoft.CognitiveServices/accounts/defenderForAISettings@2026-03-01' = {
  parent: accounts_slipwell_openai_name_resource
  name: 'Default'
  properties: {
    state: 'Disabled'
  }
}

resource accounts_slipwell_openai_name_gpt_4o_mini 'Microsoft.CognitiveServices/accounts/deployments@2026-03-01' = {
  parent: accounts_slipwell_openai_name_resource
  name: 'gpt-4o-mini'
  sku: {
    name: 'GlobalStandard'
    capacity: 250
  }
  properties: {
    model: {
      format: 'OpenAI'
      name: 'gpt-4o-mini'
      version: '2024-07-18'
    }
    versionUpgradeOption: 'OnceNewDefaultVersionAvailable'
    currentCapacity: 250
    raiPolicyName: 'Microsoft.DefaultV2'
    deploymentState: 'Running'
  }
}

resource accounts_slipwell_openai_name_Microsoft_Default 'Microsoft.CognitiveServices/accounts/raiPolicies@2026-03-01' = {
  parent: accounts_slipwell_openai_name_resource
  name: 'Microsoft.Default'
  properties: {
    mode: 'Blocking'
    contentFilters: [
      {
        name: 'Hate'
        severityThreshold: 'Medium'
        blocking: true
        enabled: true
        source: 'Prompt'
        action: 'NONE'
      }
      {
        name: 'Hate'
        severityThreshold: 'Medium'
        blocking: true
        enabled: true
        source: 'Completion'
        action: 'NONE'
      }
      {
        name: 'Sexual'
        severityThreshold: 'Medium'
        blocking: true
        enabled: true
        source: 'Prompt'
        action: 'NONE'
      }
      {
        name: 'Sexual'
        severityThreshold: 'Medium'
        blocking: true
        enabled: true
        source: 'Completion'
        action: 'NONE'
      }
      {
        name: 'Violence'
        severityThreshold: 'Medium'
        blocking: true
        enabled: true
        source: 'Prompt'
        action: 'NONE'
      }
      {
        name: 'Violence'
        severityThreshold: 'Medium'
        blocking: true
        enabled: true
        source: 'Completion'
        action: 'NONE'
      }
      {
        name: 'Selfharm'
        severityThreshold: 'Medium'
        blocking: true
        enabled: true
        source: 'Prompt'
        action: 'NONE'
      }
      {
        name: 'Selfharm'
        severityThreshold: 'Medium'
        blocking: true
        enabled: true
        source: 'Completion'
        action: 'NONE'
      }
    ]
  }
}

resource accounts_slipwell_openai_name_Microsoft_DefaultV2 'Microsoft.CognitiveServices/accounts/raiPolicies@2026-03-01' = {
  parent: accounts_slipwell_openai_name_resource
  name: 'Microsoft.DefaultV2'
  properties: {
    mode: 'Blocking'
    contentFilters: [
      {
        name: 'Hate'
        severityThreshold: 'Medium'
        blocking: true
        enabled: true
        source: 'Prompt'
        action: 'NONE'
      }
      {
        name: 'Hate'
        severityThreshold: 'Medium'
        blocking: true
        enabled: true
        source: 'Completion'
        action: 'NONE'
      }
      {
        name: 'Sexual'
        severityThreshold: 'Medium'
        blocking: true
        enabled: true
        source: 'Prompt'
        action: 'NONE'
      }
      {
        name: 'Sexual'
        severityThreshold: 'Medium'
        blocking: true
        enabled: true
        source: 'Completion'
        action: 'NONE'
      }
      {
        name: 'Violence'
        severityThreshold: 'Medium'
        blocking: true
        enabled: true
        source: 'Prompt'
        action: 'NONE'
      }
      {
        name: 'Violence'
        severityThreshold: 'Medium'
        blocking: true
        enabled: true
        source: 'Completion'
        action: 'NONE'
      }
      {
        name: 'Selfharm'
        severityThreshold: 'Medium'
        blocking: true
        enabled: true
        source: 'Prompt'
        action: 'NONE'
      }
      {
        name: 'Selfharm'
        severityThreshold: 'Medium'
        blocking: true
        enabled: true
        source: 'Completion'
        action: 'NONE'
      }
      {
        name: 'Jailbreak'
        blocking: true
        enabled: true
        source: 'Prompt'
        action: 'NONE'
      }
      {
        name: 'Protected Material Text'
        blocking: true
        enabled: true
        source: 'Completion'
        action: 'NONE'
      }
      {
        name: 'Protected Material Code'
        blocking: false
        enabled: true
        source: 'Completion'
        action: 'NONE'
      }
    ]
  }
}

resource virtualMachines_simulator_machine_name_resource 'Microsoft.Compute/virtualMachines@2025-11-01' = {
  name: virtualMachines_simulator_machine_name
  location: 'koreacentral'
  zones: [
    '1'
  ]
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_D4as_v5'
    }
    additionalCapabilities: {
      hibernationEnabled: false
    }
    storageProfile: {
      imageReference: {
        publisher: 'canonical'
        offer: 'ubuntu-24_04-lts'
        sku: 'server'
        version: 'latest'
      }
      osDisk: {
        osType: 'Linux'
        name: '${virtualMachines_simulator_machine_name}_OsDisk_1_e8c8df97662b491eb579870995243822'
        createOption: 'FromImage'
        caching: 'ReadWrite'
        managedDisk: {
          id: resourceId(
            'Microsoft.Compute/disks',
            '${virtualMachines_simulator_machine_name}_OsDisk_1_e8c8df97662b491eb579870995243822'
          )
        }
        deleteOption: 'Delete'
      }
      dataDisks: []
      diskControllerType: 'SCSI'
    }
    osProfile: {
      computerName: virtualMachines_simulator_machine_name
      linuxConfiguration: {
        disablePasswordAuthentication: true
        ssh: {
          publicKeys: [
            {
              path: '/home/azureuser/.ssh/authorized_keys'
              keyData: 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCjoNgwQs0Jp0BilVDSsLulgGdKDtS58mYVrQu6PdVNhxWYVN3aDn/MSCi2ZMtWIcXwGLMCqQGS2/qAinBpJW8XmzxyFSq2ec/tRc9/BPt4bonkkmubt+yLyrlhh7jSd8hnHRa0ut7MP9c8JYXOJ0foPXBLqgVqkNpc+Nx9qieM0amkRH9BXaCW/tDewuvXfNiyuhBLzLy/NeYYfjyEnPtaD1/d+e4wU1Kx6grfpKp7xUAQgbO/LvjuP+EmLiUcnIN82yciBM7J9wAhnETxxhZzIa4XLuU/xlnRshBhtUlmUblCAHnu/TUZKRYZTJ0G+pwMyUMLk+bPkv6LSdnKxZk6wZWVMSUdjq0wK56Gid4LWSvtDtYcuo0GlfOfBFPidQz+fBFzXbZl3m0AcXlQ2T2wTYJsVj10ZMcx+1oOg9EsCYkr/tJwWC6AwojcYYe6b5XfM40oxZr1FIM6vJmy4GoM2jFYjI+kQ076r0cNaWXKr12+cbyQG7lNlqLVQ+vjqVU= generated-by-azure'
            }
          ]
        }
        provisionVMAgent: true
        patchSettings: {
          patchMode: 'ImageDefault'
          assessmentMode: 'ImageDefault'
        }
      }
      secrets: []
      allowExtensionOperations: true
      requireGuestProvisionSignal: true
      adminUsername: 'azureuser'
    }
    securityProfile: {
      securityType: 'Standard'
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: networkInterfaces_simulator_machine826_z1_name_resource.id
          properties: {
            deleteOption: 'Delete'
          }
        }
      ]
    }
    diagnosticsProfile: {
      bootDiagnostics: {
        enabled: true
      }
    }
  }
}

resource namespaces_ehns_team2_market_name_RootManageSharedAccessKey 'Microsoft.EventHub/namespaces/authorizationrules@2026-01-01' = {
  parent: namespaces_ehns_team2_market_name_resource
  name: 'RootManageSharedAccessKey'
  location: 'koreacentral'
  properties: {
    rights: [
      'Listen'
      'Manage'
      'Send'
    ]
  }
}

resource namespaces_ehns_team2_market_name_eh_tick 'Microsoft.EventHub/namespaces/eventhubs@2026-01-01' = {
  parent: namespaces_ehns_team2_market_name_resource
  name: 'eh-tick'
  location: 'koreacentral'
  properties: {
    messageTimestampDescription: {
      timestampType: 'LogAppend'
    }
    retentionDescription: {
      cleanupPolicy: 'Delete'
      retentionTimeInHours: 24
    }
    messageRetentionInDays: 1
    partitionCount: 4
    status: 'Active'
  }
}

resource namespaces_ehns_team2_market_name_default 'Microsoft.EventHub/namespaces/networkrulesets@2026-01-01' = {
  parent: namespaces_ehns_team2_market_name_resource
  name: 'default'
  location: 'koreacentral'
  properties: {
    publicNetworkAccess: 'Enabled'
    defaultAction: 'Allow'
    virtualNetworkRules: []
    ipRules: []
    trustedServiceAccessEnabled: false
  }
}

resource components_slipwell_report_function_name_degradationindependencyduration 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_slipwell_report_function_name_resource
  name: 'degradationindependencyduration'
  location: 'koreacentral'
  properties: {
    ruleDefinitions: {
      Name: 'degradationindependencyduration'
      DisplayName: 'Degradation in dependency duration'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    enabled: true
    sendEmailsToSubscriptionOwners: true
    customEmails: []
  }
}

resource components_slipwell_report_function_name_degradationinserverresponsetime 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_slipwell_report_function_name_resource
  name: 'degradationinserverresponsetime'
  location: 'koreacentral'
  properties: {
    ruleDefinitions: {
      Name: 'degradationinserverresponsetime'
      DisplayName: 'Degradation in server response time'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    enabled: true
    sendEmailsToSubscriptionOwners: true
    customEmails: []
  }
}

resource components_slipwell_report_function_name_digestMailConfiguration 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_slipwell_report_function_name_resource
  name: 'digestMailConfiguration'
  location: 'koreacentral'
  properties: {
    ruleDefinitions: {
      Name: 'digestMailConfiguration'
      DisplayName: 'Digest Mail Configuration'
      Description: 'This rule describes the digest mail preferences'
      HelpUrl: 'www.homail.com'
      IsHidden: true
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    enabled: true
    sendEmailsToSubscriptionOwners: true
    customEmails: []
  }
}

resource components_slipwell_report_function_name_extension_billingdatavolumedailyspikeextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_slipwell_report_function_name_resource
  name: 'extension_billingdatavolumedailyspikeextension'
  location: 'koreacentral'
  properties: {
    ruleDefinitions: {
      Name: 'extension_billingdatavolumedailyspikeextension'
      DisplayName: 'Abnormal rise in daily data volume (preview)'
      Description: 'This detection rule automatically analyzes the billing data generated by your application, and can warn you about an unusual increase in your application\'s billing costs'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/tree/master/SmartDetection/billing-data-volume-daily-spike.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    enabled: true
    sendEmailsToSubscriptionOwners: true
    customEmails: []
  }
}

resource components_slipwell_report_function_name_extension_canaryextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_slipwell_report_function_name_resource
  name: 'extension_canaryextension'
  location: 'koreacentral'
  properties: {
    ruleDefinitions: {
      Name: 'extension_canaryextension'
      DisplayName: 'Canary extension'
      Description: 'Canary extension'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/'
      IsHidden: true
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    enabled: true
    sendEmailsToSubscriptionOwners: true
    customEmails: []
  }
}

resource components_slipwell_report_function_name_extension_exceptionchangeextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_slipwell_report_function_name_resource
  name: 'extension_exceptionchangeextension'
  location: 'koreacentral'
  properties: {
    ruleDefinitions: {
      Name: 'extension_exceptionchangeextension'
      DisplayName: 'Abnormal rise in exception volume (preview)'
      Description: 'This detection rule automatically analyzes the exceptions thrown in your application, and can warn you about unusual patterns in your exception telemetry.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/abnormal-rise-in-exception-volume.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    enabled: true
    sendEmailsToSubscriptionOwners: true
    customEmails: []
  }
}

resource components_slipwell_report_function_name_extension_memoryleakextension 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_slipwell_report_function_name_resource
  name: 'extension_memoryleakextension'
  location: 'koreacentral'
  properties: {
    ruleDefinitions: {
      Name: 'extension_memoryleakextension'
      DisplayName: 'Potential memory leak detected (preview)'
      Description: 'This detection rule automatically analyzes the memory consumption of each process in your application, and can warn you about potential memory leaks or increased memory consumption.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/tree/master/SmartDetection/memory-leak.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    enabled: true
    sendEmailsToSubscriptionOwners: true
    customEmails: []
  }
}

resource components_slipwell_report_function_name_extension_securityextensionspackage 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_slipwell_report_function_name_resource
  name: 'extension_securityextensionspackage'
  location: 'koreacentral'
  properties: {
    ruleDefinitions: {
      Name: 'extension_securityextensionspackage'
      DisplayName: 'Potential security issue detected (preview)'
      Description: 'This detection rule automatically analyzes the telemetry generated by your application and detects potential security issues.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/application-security-detection-pack.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    enabled: true
    sendEmailsToSubscriptionOwners: true
    customEmails: []
  }
}

resource components_slipwell_report_function_name_extension_traceseveritydetector 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_slipwell_report_function_name_resource
  name: 'extension_traceseveritydetector'
  location: 'koreacentral'
  properties: {
    ruleDefinitions: {
      Name: 'extension_traceseveritydetector'
      DisplayName: 'Degradation in trace severity ratio (preview)'
      Description: 'This detection rule automatically analyzes the trace logs emitted from your application, and can warn you about unusual patterns in the severity of your trace telemetry.'
      HelpUrl: 'https://github.com/Microsoft/ApplicationInsights-Home/blob/master/SmartDetection/degradation-in-trace-severity-ratio.md'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    enabled: true
    sendEmailsToSubscriptionOwners: true
    customEmails: []
  }
}

resource components_slipwell_report_function_name_longdependencyduration 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_slipwell_report_function_name_resource
  name: 'longdependencyduration'
  location: 'koreacentral'
  properties: {
    ruleDefinitions: {
      Name: 'longdependencyduration'
      DisplayName: 'Long dependency duration'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    enabled: true
    sendEmailsToSubscriptionOwners: true
    customEmails: []
  }
}

resource components_slipwell_report_function_name_migrationToAlertRulesCompleted 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_slipwell_report_function_name_resource
  name: 'migrationToAlertRulesCompleted'
  location: 'koreacentral'
  properties: {
    ruleDefinitions: {
      Name: 'migrationToAlertRulesCompleted'
      DisplayName: 'Migration To Alert Rules Completed'
      Description: 'A configuration that controls the migration state of Smart Detection to Smart Alerts'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: true
      IsEnabledByDefault: false
      IsInPreview: true
      SupportsEmailNotifications: false
    }
    enabled: false
    sendEmailsToSubscriptionOwners: true
    customEmails: []
  }
}

resource components_slipwell_report_function_name_slowpageloadtime 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_slipwell_report_function_name_resource
  name: 'slowpageloadtime'
  location: 'koreacentral'
  properties: {
    ruleDefinitions: {
      Name: 'slowpageloadtime'
      DisplayName: 'Slow page load time'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    enabled: true
    sendEmailsToSubscriptionOwners: true
    customEmails: []
  }
}

resource components_slipwell_report_function_name_slowserverresponsetime 'microsoft.insights/components/ProactiveDetectionConfigs@2018-05-01-preview' = {
  parent: components_slipwell_report_function_name_resource
  name: 'slowserverresponsetime'
  location: 'koreacentral'
  properties: {
    ruleDefinitions: {
      Name: 'slowserverresponsetime'
      DisplayName: 'Slow server response time'
      Description: 'Smart Detection rules notify you of performance anomaly issues.'
      HelpUrl: 'https://docs.microsoft.com/en-us/azure/application-insights/app-insights-proactive-performance-diagnostics'
      IsHidden: false
      IsEnabledByDefault: true
      IsInPreview: false
      SupportsEmailNotifications: true
    }
    enabled: true
    sendEmailsToSubscriptionOwners: true
    customEmails: []
  }
}

resource networkSecurityGroups_simulator_machine_nsg_name_Allow_HTTP_80 'Microsoft.Network/networkSecurityGroups/securityRules@2025-05-01' = {
  name: '${networkSecurityGroups_simulator_machine_nsg_name}/Allow-HTTP-80'
  properties: {
    description: 'Nginx'
    protocol: 'TCP'
    sourcePortRange: '*'
    destinationPortRange: '80'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 1000
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_simulator_machine_nsg_name_resource
  ]
}

resource networkSecurityGroups_simulator_machine_nsg_name_api 'Microsoft.Network/networkSecurityGroups/securityRules@2025-05-01' = {
  name: '${networkSecurityGroups_simulator_machine_nsg_name}/api'
  properties: {
    protocol: 'TCP'
    sourcePortRange: '*'
    destinationPortRange: '8000'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 250
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_simulator_machine_nsg_name_resource
  ]
}

resource networkSecurityGroups_simulator_machine_nsg_name_dash 'Microsoft.Network/networkSecurityGroups/securityRules@2025-05-01' = {
  name: '${networkSecurityGroups_simulator_machine_nsg_name}/dash'
  properties: {
    protocol: '*'
    sourcePortRange: '*'
    destinationPortRange: '8050'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 100
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_simulator_machine_nsg_name_resource
  ]
}

resource networkSecurityGroups_simulator_machine_nsg_name_react 'Microsoft.Network/networkSecurityGroups/securityRules@2025-05-01' = {
  name: '${networkSecurityGroups_simulator_machine_nsg_name}/react'
  properties: {
    protocol: '*'
    sourcePortRange: '*'
    destinationPortRange: '5173'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 200
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_simulator_machine_nsg_name_resource
  ]
}

resource networkSecurityGroups_simulator_machine_nsg_name_SSH 'Microsoft.Network/networkSecurityGroups/securityRules@2025-05-01' = {
  name: '${networkSecurityGroups_simulator_machine_nsg_name}/SSH'
  properties: {
    protocol: 'TCP'
    sourcePortRange: '*'
    destinationPortRange: '22'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 300
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
  dependsOn: [
    networkSecurityGroups_simulator_machine_nsg_name_resource
  ]
}

resource virtualNetworks_simulator_machine_vnet_name_default 'Microsoft.Network/virtualNetworks/subnets@2025-05-01' = {
  name: '${virtualNetworks_simulator_machine_vnet_name}/default'
  properties: {
    addressPrefix: '10.2.0.0/24'
    delegations: []
    privateEndpointNetworkPolicies: 'Disabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
  dependsOn: [
    virtualNetworks_simulator_machine_vnet_name_resource
  ]
}

resource servers_sql_slipwell_team2_name_Default 'Microsoft.Sql/servers/advancedThreatProtectionSettings@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'Default'
  properties: {
    state: 'Disabled'
  }
}

resource servers_sql_slipwell_team2_name_CreateIndex 'Microsoft.Sql/servers/advisors@2014-04-01' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'CreateIndex'
  properties: {
    autoExecuteValue: 'Disabled'
  }
}

resource servers_sql_slipwell_team2_name_DbParameterization 'Microsoft.Sql/servers/advisors@2014-04-01' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'DbParameterization'
  properties: {
    autoExecuteValue: 'Disabled'
  }
}

resource servers_sql_slipwell_team2_name_DefragmentIndex 'Microsoft.Sql/servers/advisors@2014-04-01' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'DefragmentIndex'
  properties: {
    autoExecuteValue: 'Disabled'
  }
}

resource servers_sql_slipwell_team2_name_DropIndex 'Microsoft.Sql/servers/advisors@2014-04-01' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'DropIndex'
  properties: {
    autoExecuteValue: 'Disabled'
  }
}

resource servers_sql_slipwell_team2_name_ForceLastGoodPlan 'Microsoft.Sql/servers/advisors@2014-04-01' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'ForceLastGoodPlan'
  properties: {
    autoExecuteValue: 'Enabled'
  }
}

resource Microsoft_Sql_servers_auditingPolicies_servers_sql_slipwell_team2_name_Default 'Microsoft.Sql/servers/auditingPolicies@2014-04-01' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'Default'
  location: 'Korea Central'
  properties: {
    auditingState: 'Disabled'
  }
}

resource Microsoft_Sql_servers_auditingSettings_servers_sql_slipwell_team2_name_Default 'Microsoft.Sql/servers/auditingSettings@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'Default'
  properties: {
    retentionDays: 0
    auditActionsAndGroups: []
    isStorageSecondaryKeyInUse: false
    isAzureMonitorTargetEnabled: false
    isManagedIdentityInUse: false
    state: 'Disabled'
    storageAccountSubscriptionId: '00000000-0000-0000-0000-000000000000'
  }
}

resource Microsoft_Sql_servers_connectionPolicies_servers_sql_slipwell_team2_name_default 'Microsoft.Sql/servers/connectionPolicies@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'default'
  location: 'koreacentral'
  properties: {
    connectionType: 'Default'
  }
}

resource servers_sql_slipwell_team2_name_sqldb_slipwell 'Microsoft.Sql/servers/databases@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'sqldb-slipwell'
  location: 'koreacentral'
  sku: {
    name: 'S0'
    tier: 'Standard'
    capacity: 10
  }
  kind: 'v12.0,user'
  properties: {
    collation: 'SQL_Latin1_General_CP1_CI_AS'
    maxSizeBytes: 107374182400
    catalogCollation: 'SQL_Latin1_General_CP1_CI_AS'
    zoneRedundant: false
    readScale: 'Disabled'
    requestedBackupStorageRedundancy: 'Local'
    maintenanceConfigurationId: '/subscriptions/27db5ec6-d206-4028-b5e1-6004dca5eeef/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_Default'
    isLedgerOn: false
    availabilityZone: 'NoPreference'
  }
}

resource servers_sql_slipwell_team2_name_master_Default 'Microsoft.Sql/servers/databases/advancedThreatProtectionSettings@2025-02-01-preview' = {
  name: '${servers_sql_slipwell_team2_name}/master/Default'
  properties: {
    state: 'Disabled'
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource Microsoft_Sql_servers_databases_auditingPolicies_servers_sql_slipwell_team2_name_master_Default 'Microsoft.Sql/servers/databases/auditingPolicies@2014-04-01' = {
  name: '${servers_sql_slipwell_team2_name}/master/Default'
  location: 'Korea Central'
  properties: {
    auditingState: 'Disabled'
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource Microsoft_Sql_servers_databases_auditingSettings_servers_sql_slipwell_team2_name_master_Default 'Microsoft.Sql/servers/databases/auditingSettings@2025-02-01-preview' = {
  name: '${servers_sql_slipwell_team2_name}/master/Default'
  properties: {
    retentionDays: 0
    isAzureMonitorTargetEnabled: false
    state: 'Disabled'
    storageAccountSubscriptionId: '00000000-0000-0000-0000-000000000000'
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource Microsoft_Sql_servers_databases_extendedAuditingSettings_servers_sql_slipwell_team2_name_master_Default 'Microsoft.Sql/servers/databases/extendedAuditingSettings@2025-02-01-preview' = {
  name: '${servers_sql_slipwell_team2_name}/master/Default'
  properties: {
    retentionDays: 0
    isAzureMonitorTargetEnabled: false
    state: 'Disabled'
    storageAccountSubscriptionId: '00000000-0000-0000-0000-000000000000'
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource Microsoft_Sql_servers_databases_geoBackupPolicies_servers_sql_slipwell_team2_name_master_Default 'Microsoft.Sql/servers/databases/geoBackupPolicies@2025-02-01-preview' = {
  name: '${servers_sql_slipwell_team2_name}/master/Default'
  properties: {
    state: 'Disabled'
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource servers_sql_slipwell_team2_name_master_Current 'Microsoft.Sql/servers/databases/ledgerDigestUploads@2025-02-01-preview' = {
  name: '${servers_sql_slipwell_team2_name}/master/Current'
  properties: {}
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource Microsoft_Sql_servers_databases_securityAlertPolicies_servers_sql_slipwell_team2_name_master_Default 'Microsoft.Sql/servers/databases/securityAlertPolicies@2025-02-01-preview' = {
  name: '${servers_sql_slipwell_team2_name}/master/Default'
  properties: {
    state: 'Disabled'
    disabledAlerts: [
      ''
    ]
    emailAddresses: [
      ''
    ]
    emailAccountAdmins: false
    retentionDays: 0
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource Microsoft_Sql_servers_databases_transparentDataEncryption_servers_sql_slipwell_team2_name_master_Current 'Microsoft.Sql/servers/databases/transparentDataEncryption@2025-02-01-preview' = {
  name: '${servers_sql_slipwell_team2_name}/master/Current'
  properties: {
    state: 'Disabled'
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource Microsoft_Sql_servers_databases_vulnerabilityAssessments_servers_sql_slipwell_team2_name_master_Default 'Microsoft.Sql/servers/databases/vulnerabilityAssessments@2025-02-01-preview' = {
  name: '${servers_sql_slipwell_team2_name}/master/Default'
  properties: {
    recurringScans: {
      isEnabled: false
      emailSubscriptionAdmins: true
    }
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource Microsoft_Sql_servers_devOpsAuditingSettings_servers_sql_slipwell_team2_name_Default 'Microsoft.Sql/servers/devOpsAuditingSettings@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'Default'
  properties: {
    isAzureMonitorTargetEnabled: false
    isManagedIdentityInUse: false
    state: 'Disabled'
    storageAccountSubscriptionId: '00000000-0000-0000-0000-000000000000'
  }
}

resource servers_sql_slipwell_team2_name_current 'Microsoft.Sql/servers/encryptionProtector@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'current'
  kind: 'servicemanaged'
  properties: {
    serverKeyName: 'ServiceManaged'
    serverKeyType: 'ServiceManaged'
    autoRotationEnabled: false
  }
}

resource Microsoft_Sql_servers_extendedAuditingSettings_servers_sql_slipwell_team2_name_Default 'Microsoft.Sql/servers/extendedAuditingSettings@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'Default'
  properties: {
    retentionDays: 0
    auditActionsAndGroups: []
    isStorageSecondaryKeyInUse: false
    isAzureMonitorTargetEnabled: false
    isManagedIdentityInUse: false
    state: 'Disabled'
    storageAccountSubscriptionId: '00000000-0000-0000-0000-000000000000'
  }
}

resource servers_sql_slipwell_team2_name_AllowAllWindowsAzureIps 'Microsoft.Sql/servers/firewallRules@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'AllowAllWindowsAzureIps'
  properties: {
    startIpAddress: '0.0.0.0'
    endIpAddress: '0.0.0.0'
  }
}

resource servers_sql_slipwell_team2_name_ClientIp_2026_6_23_12_50_16 'Microsoft.Sql/servers/firewallRules@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'ClientIp-2026-6-23_12-50-16'
  properties: {
    startIpAddress: '121.183.170.112'
    endIpAddress: '121.183.170.112'
  }
}

resource servers_sql_slipwell_team2_name_ClientIPAddress_2026_6_25_12_44_16 'Microsoft.Sql/servers/firewallRules@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'ClientIPAddress_2026-6-25_12-44-16'
  properties: {
    startIpAddress: '211.215.183.38'
    endIpAddress: '211.215.183.38'
  }
}

resource servers_sql_slipwell_team2_name_ClientIPAddress_2026_6_25_17_32_34 'Microsoft.Sql/servers/firewallRules@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'ClientIPAddress_2026-6-25_17-32-34'
  properties: {
    startIpAddress: '27.35.18.231'
    endIpAddress: '27.35.18.231'
  }
}

resource servers_sql_slipwell_team2_name_QueryEditorClientIPAddress_1782281130894 'Microsoft.Sql/servers/firewallRules@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'QueryEditorClientIPAddress_1782281130894'
  properties: {
    startIpAddress: '14.42.15.193'
    endIpAddress: '14.42.15.193'
  }
}

resource servers_sql_slipwell_team2_name_QueryEditorClientIPAddress_1782374276163 'Microsoft.Sql/servers/firewallRules@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'QueryEditorClientIPAddress_1782374276163'
  properties: {
    startIpAddress: '211.216.127.65'
    endIpAddress: '211.216.127.65'
  }
}

resource servers_sql_slipwell_team2_name_QueryEditorClientIPAddress_1782438150689 'Microsoft.Sql/servers/firewallRules@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'QueryEditorClientIPAddress_1782438150689'
  properties: {
    startIpAddress: '221.146.246.100'
    endIpAddress: '221.146.246.100'
  }
}

resource servers_sql_slipwell_team2_name_QueryEditorClientIPAddress_1782441308465 'Microsoft.Sql/servers/firewallRules@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'QueryEditorClientIPAddress_1782441308465'
  properties: {
    startIpAddress: '59.7.127.228'
    endIpAddress: '59.7.127.228'
  }
}

resource servers_sql_slipwell_team2_name_QueryEditorClientIPAddress_1782615775411 'Microsoft.Sql/servers/firewallRules@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'QueryEditorClientIPAddress_1782615775411'
  properties: {
    startIpAddress: '222.100.99.162'
    endIpAddress: '222.100.99.162'
  }
}

resource servers_sql_slipwell_team2_name_QueryEditorClientIPAddress_1782780137178 'Microsoft.Sql/servers/firewallRules@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'QueryEditorClientIPAddress_1782780137178'
  properties: {
    startIpAddress: '119.193.35.50'
    endIpAddress: '119.193.35.50'
  }
}

resource servers_sql_slipwell_team2_name_QueryEditorClientIPAddress_1782810803530 'Microsoft.Sql/servers/firewallRules@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'QueryEditorClientIPAddress_1782810803530'
  properties: {
    startIpAddress: '222.120.249.161'
    endIpAddress: '222.120.249.161'
  }
}

resource servers_sql_slipwell_team2_name_QueryEditorClientIPAddress_1782810805432 'Microsoft.Sql/servers/firewallRules@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'QueryEditorClientIPAddress_1782810805432'
  properties: {
    startIpAddress: '222.120.249.161'
    endIpAddress: '222.120.249.161'
  }
}

resource servers_sql_slipwell_team2_name_QueryEditorClientIPAddress_1782896291252 'Microsoft.Sql/servers/firewallRules@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'QueryEditorClientIPAddress_1782896291252'
  properties: {
    startIpAddress: '222.120.251.193'
    endIpAddress: '222.120.251.193'
  }
}

resource servers_sql_slipwell_team2_name_QueryEditorClientIPAddress_1782896703602 'Microsoft.Sql/servers/firewallRules@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'QueryEditorClientIPAddress_1782896703602'
  properties: {
    startIpAddress: '220.88.150.33'
    endIpAddress: '220.88.150.33'
  }
}

resource servers_sql_slipwell_team2_name_StreamAnalyticsFirewallRule 'Microsoft.Sql/servers/firewallRules@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'StreamAnalyticsFirewallRule'
  properties: {
    startIpAddress: '211.202.128.86'
    endIpAddress: '211.202.128.86'
  }
}

resource servers_sql_slipwell_team2_name_ServiceManaged 'Microsoft.Sql/servers/keys@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'ServiceManaged'
  kind: 'servicemanaged'
  properties: {
    serverKeyType: 'ServiceManaged'
  }
}

resource Microsoft_Sql_servers_securityAlertPolicies_servers_sql_slipwell_team2_name_Default 'Microsoft.Sql/servers/securityAlertPolicies@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'Default'
  properties: {
    state: 'Disabled'
    disabledAlerts: [
      ''
    ]
    emailAddresses: [
      ''
    ]
    emailAccountAdmins: false
    retentionDays: 0
  }
}

resource Microsoft_Sql_servers_sqlVulnerabilityAssessments_servers_sql_slipwell_team2_name_Default 'Microsoft.Sql/servers/sqlVulnerabilityAssessments@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'Default'
  properties: {
    state: 'Disabled'
  }
}

resource Microsoft_Sql_servers_vulnerabilityAssessments_servers_sql_slipwell_team2_name_Default 'Microsoft.Sql/servers/vulnerabilityAssessments@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_resource
  name: 'Default'
  properties: {
    recurringScans: {
      isEnabled: false
      emailSubscriptionAdmins: true
    }
    storageContainerPath: vulnerabilityAssessments_Default_storageContainerPath
  }
}

resource storageAccounts_slipwellreportstorage_name_default 'Microsoft.Storage/storageAccounts/blobServices@2026-04-01' = {
  parent: storageAccounts_slipwellreportstorage_name_resource
  name: 'default'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  properties: {
    staticWebsite: {
      enabled: false
    }
    cors: {
      corsRules: []
    }
    deleteRetentionPolicy: {
      allowPermanentDelete: false
      enabled: false
    }
  }
}

resource Microsoft_Storage_storageAccounts_fileServices_storageAccounts_slipwellreportstorage_name_default 'Microsoft.Storage/storageAccounts/fileServices@2026-04-01' = {
  parent: storageAccounts_slipwellreportstorage_name_resource
  name: 'default'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  properties: {
    protocolSettings: {
      smb: {}
    }
    cors: {
      corsRules: []
    }
    shareDeleteRetentionPolicy: {
      enabled: true
      days: 7
    }
  }
}

resource Microsoft_Storage_storageAccounts_queueServices_storageAccounts_slipwellreportstorage_name_default 'Microsoft.Storage/storageAccounts/queueServices@2026-04-01' = {
  parent: storageAccounts_slipwellreportstorage_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource Microsoft_Storage_storageAccounts_tableServices_storageAccounts_slipwellreportstorage_name_default 'Microsoft.Storage/storageAccounts/tableServices@2026-04-01' = {
  parent: storageAccounts_slipwellreportstorage_name_resource
  name: 'default'
  properties: {
    cors: {
      corsRules: []
    }
  }
}

resource streamingjobs_asa_ohlcv_name_tickinput 'Microsoft.StreamAnalytics/streamingjobs/inputs@2021-10-01-preview' = {
  parent: streamingjobs_asa_ohlcv_name_resource
  name: 'tickinput'
  properties: {
    type: 'Stream'
    datasource: {
      type: 'Microsoft.EventHub/EventHub'
      properties: {
        consumerGroupName: 'asa-cg'
        eventHubName: 'eh-tick'
        serviceBusNamespace: 'ehns-team2-market'
        sharedAccessPolicyName: 'asa-ohlcv_tickinput_policy'
        authenticationMode: 'ConnectionString'
      }
    }
    compression: {
      type: 'None'
    }
    serialization: {
      type: 'Json'
      properties: {
        encoding: 'UTF8'
      }
    }
  }
}

resource streamingjobs_asa_ohlcv_name_account_log_output 'Microsoft.StreamAnalytics/streamingjobs/outputs@2021-10-01-preview' = {
  parent: streamingjobs_asa_ohlcv_name_resource
  name: 'account_log_output'
  properties: {
    datasource: {
      type: 'Microsoft.Sql/Server/Database'
      properties: {
        maxWriterCount: 1
        maxBatchCount: 10000
        table: '[dbo].[account_event_log]'
        server: 'sql-slipwell-team2'
        database: 'sqldb-slipwell'
        user: 'sqladminuser'
        authenticationMode: 'ConnectionString'
      }
    }
  }
}

resource streamingjobs_asa_ohlcv_name_account_output 'Microsoft.StreamAnalytics/streamingjobs/outputs@2021-10-01-preview' = {
  parent: streamingjobs_asa_ohlcv_name_resource
  name: 'account_output'
  properties: {
    datasource: {
      type: 'Microsoft.Sql/Server/Database'
      properties: {
        maxWriterCount: 1
        maxBatchCount: 10000
        table: '[dbo].[account]'
        server: 'sql-slipwell-team2'
        database: 'sqldb-slipwell'
        user: 'sqladminuser'
        authenticationMode: 'ConnectionString'
      }
    }
  }
}

resource streamingjobs_asa_ohlcv_name_market_state_output 'Microsoft.StreamAnalytics/streamingjobs/outputs@2021-10-01-preview' = {
  parent: streamingjobs_asa_ohlcv_name_resource
  name: 'market_state_output'
  properties: {
    datasource: {
      type: 'Microsoft.Sql/Server/Database'
      properties: {
        maxWriterCount: 1
        maxBatchCount: 10000
        table: '[dbo].[system_market_state]'
        server: 'sql-slipwell-team2'
        database: 'sqldb-slipwell'
        user: 'sqladminuser'
        authenticationMode: 'ConnectionString'
      }
    }
  }
}

resource streamingjobs_asa_ohlcv_name_ohlcv_output 'Microsoft.StreamAnalytics/streamingjobs/outputs@2021-10-01-preview' = {
  parent: streamingjobs_asa_ohlcv_name_resource
  name: 'ohlcv_output'
  properties: {
    datasource: {
      type: 'Microsoft.Sql/Server/Database'
      properties: {
        maxWriterCount: 1
        maxBatchCount: 10000
        table: '[dbo].[market_ohlcv]'
        server: 'sql-slipwell-team2'
        database: 'sqldb-slipwell'
        user: 'sqladminuser'
        authenticationMode: 'ConnectionString'
      }
    }
  }
}

resource streamingjobs_asa_ohlcv_name_order_output 'Microsoft.StreamAnalytics/streamingjobs/outputs@2021-10-01-preview' = {
  parent: streamingjobs_asa_ohlcv_name_resource
  name: 'order_output'
  properties: {
    datasource: {
      type: 'Microsoft.Sql/Server/Database'
      properties: {
        maxWriterCount: 1
        maxBatchCount: 10000
        table: '[dbo].[system_order]'
        server: 'sql-slipwell-team2'
        database: 'sqldb-slipwell'
        user: 'sqladminuser'
        authenticationMode: 'ConnectionString'
      }
    }
  }
}

resource streamingjobs_asa_ohlcv_name_trade_output 'Microsoft.StreamAnalytics/streamingjobs/outputs@2021-10-01-preview' = {
  parent: streamingjobs_asa_ohlcv_name_resource
  name: 'trade_output'
  properties: {
    datasource: {
      type: 'Microsoft.Sql/Server/Database'
      properties: {
        maxWriterCount: 1
        maxBatchCount: 10000
        table: '[dbo].[system_trade]'
        server: 'sql-slipwell-team2'
        database: 'sqldb-slipwell'
        user: 'sqladminuser'
        authenticationMode: 'ConnectionString'
      }
    }
  }
}

resource sites_slipwell_report_function_name_ftp 'Microsoft.Web/sites/basicPublishingCredentialsPolicies@2024-11-01' = {
  parent: sites_slipwell_report_function_name_resource
  name: 'ftp'
  location: 'Korea Central'
  tags: {
    'hidden-link: /app-insights-resource-id': '/subscriptions/27db5ec6-d206-4028-b5e1-6004dca5eeef/resourceGroups/dt4_project2_team2/providers/microsoft.insights/components/slipwell-report-function'
  }
  properties: {
    allow: false
  }
}

resource sites_slipwell_report_function_name_scm 'Microsoft.Web/sites/basicPublishingCredentialsPolicies@2024-11-01' = {
  parent: sites_slipwell_report_function_name_resource
  name: 'scm'
  location: 'Korea Central'
  tags: {
    'hidden-link: /app-insights-resource-id': '/subscriptions/27db5ec6-d206-4028-b5e1-6004dca5eeef/resourceGroups/dt4_project2_team2/providers/microsoft.insights/components/slipwell-report-function'
  }
  properties: {
    allow: false
  }
}

resource sites_slipwell_report_function_name_web 'Microsoft.Web/sites/config@2024-11-01' = {
  parent: sites_slipwell_report_function_name_resource
  name: 'web'
  location: 'Korea Central'
  tags: {
    'hidden-link: /app-insights-resource-id': '/subscriptions/27db5ec6-d206-4028-b5e1-6004dca5eeef/resourceGroups/dt4_project2_team2/providers/microsoft.insights/components/slipwell-report-function'
  }
  properties: {
    numberOfWorkers: 1
    defaultDocuments: [
      'Default.htm'
      'Default.html'
      'Default.asp'
      'index.htm'
      'index.html'
      'iisstart.htm'
      'default.aspx'
      'index.php'
    ]
    netFrameworkVersion: 'v4.0'
    requestTracingEnabled: false
    remoteDebuggingEnabled: false
    httpLoggingEnabled: false
    acrUseManagedIdentityCreds: false
    logsDirectorySizeLimit: 35
    detailedErrorLoggingEnabled: false
    publishingUsername: 'REDACTED'
    scmType: 'None'
    use32BitWorkerProcess: false
    webSocketsEnabled: false
    alwaysOn: false
    managedPipelineMode: 'Integrated'
    virtualApplications: [
      {
        virtualPath: '/'
        physicalPath: 'site\\wwwroot'
        preloadEnabled: false
      }
    ]
    loadBalancing: 'LeastRequests'
    experiments: {
      rampUpRules: []
    }
    autoHealEnabled: false
    vnetRouteAllEnabled: false
    vnetPrivatePortsCount: 0
    publicNetworkAccess: 'Enabled'
    cors: {
      allowedOrigins: [
        'https://portal.azure.com'
      ]
      supportCredentials: false
    }
    localMySqlEnabled: false
    ipSecurityRestrictions: [
      {
        ipAddress: 'Any'
        action: 'Allow'
        priority: 2147483647
        name: 'Allow all'
        description: 'Allow all access'
      }
    ]
    scmIpSecurityRestrictions: [
      {
        ipAddress: 'Any'
        action: 'Allow'
        priority: 2147483647
        name: 'Allow all'
        description: 'Allow all access'
      }
    ]
    scmIpSecurityRestrictionsUseMain: false
    http20Enabled: false
    minTlsVersion: '1.2'
    scmMinTlsVersion: '1.2'
    ftpsState: 'FtpsOnly'
    preWarmedInstanceCount: 0
    functionAppScaleLimit: 100
    functionsRuntimeScaleMonitoringEnabled: false
    minimumElasticInstanceCount: 0
    azureStorageAccounts: {}
    http20ProxyFlag: 0
  }
}

resource sites_slipwell_report_function_name_sites_slipwell_report_function_name_bpfcdzfjfwa9cgap_koreacentral_01_azurewebsites_net 'Microsoft.Web/sites/hostNameBindings@2024-11-01' = {
  parent: sites_slipwell_report_function_name_resource
  name: '${sites_slipwell_report_function_name}-bpfcdzfjfwa9cgap.koreacentral-01.azurewebsites.net'
  location: 'Korea Central'
  properties: {
    siteName: 'slipwell-report-function'
    hostNameType: 'Verified'
  }
}

resource namespaces_ehns_team2_market_name_eh_tick_asa_ohlcv_tickinput_policy 'Microsoft.EventHub/namespaces/eventhubs/authorizationrules@2026-01-01' = {
  parent: namespaces_ehns_team2_market_name_eh_tick
  name: 'asa-ohlcv_tickinput_policy'
  location: 'koreacentral'
  properties: {
    rights: [
      'Listen'
      'Send'
    ]
  }
  dependsOn: [
    namespaces_ehns_team2_market_name_resource
  ]
}

resource namespaces_ehns_team2_market_name_eh_tick_Default 'Microsoft.EventHub/namespaces/eventhubs/consumergroups@2026-01-01' = {
  parent: namespaces_ehns_team2_market_name_eh_tick
  name: '$Default'
  location: 'koreacentral'
  properties: {}
  dependsOn: [
    namespaces_ehns_team2_market_name_resource
  ]
}

resource namespaces_ehns_team2_market_name_eh_tick_asa_cg 'Microsoft.EventHub/namespaces/eventhubs/consumergroups@2026-01-01' = {
  parent: namespaces_ehns_team2_market_name_eh_tick
  name: 'asa-cg'
  location: 'koreacentral'
  properties: {}
  dependsOn: [
    namespaces_ehns_team2_market_name_resource
  ]
}

resource servers_sql_slipwell_team2_name_sqldb_slipwell_Default 'Microsoft.Sql/servers/databases/advancedThreatProtectionSettings@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_sqldb_slipwell
  name: 'Default'
  properties: {
    state: 'Disabled'
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource servers_sql_slipwell_team2_name_sqldb_slipwell_CreateIndex 'Microsoft.Sql/servers/databases/advisors@2014-04-01' = {
  parent: servers_sql_slipwell_team2_name_sqldb_slipwell
  name: 'CreateIndex'
  properties: {
    autoExecuteValue: 'Disabled'
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource servers_sql_slipwell_team2_name_sqldb_slipwell_DbParameterization 'Microsoft.Sql/servers/databases/advisors@2014-04-01' = {
  parent: servers_sql_slipwell_team2_name_sqldb_slipwell
  name: 'DbParameterization'
  properties: {
    autoExecuteValue: 'Disabled'
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource servers_sql_slipwell_team2_name_sqldb_slipwell_DefragmentIndex 'Microsoft.Sql/servers/databases/advisors@2014-04-01' = {
  parent: servers_sql_slipwell_team2_name_sqldb_slipwell
  name: 'DefragmentIndex'
  properties: {
    autoExecuteValue: 'Disabled'
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource servers_sql_slipwell_team2_name_sqldb_slipwell_DropIndex 'Microsoft.Sql/servers/databases/advisors@2014-04-01' = {
  parent: servers_sql_slipwell_team2_name_sqldb_slipwell
  name: 'DropIndex'
  properties: {
    autoExecuteValue: 'Disabled'
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource servers_sql_slipwell_team2_name_sqldb_slipwell_ForceLastGoodPlan 'Microsoft.Sql/servers/databases/advisors@2014-04-01' = {
  parent: servers_sql_slipwell_team2_name_sqldb_slipwell
  name: 'ForceLastGoodPlan'
  properties: {
    autoExecuteValue: 'Enabled'
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource Microsoft_Sql_servers_databases_auditingPolicies_servers_sql_slipwell_team2_name_sqldb_slipwell_Default 'Microsoft.Sql/servers/databases/auditingPolicies@2014-04-01' = {
  parent: servers_sql_slipwell_team2_name_sqldb_slipwell
  name: 'Default'
  location: 'Korea Central'
  properties: {
    auditingState: 'Disabled'
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource Microsoft_Sql_servers_databases_auditingSettings_servers_sql_slipwell_team2_name_sqldb_slipwell_Default 'Microsoft.Sql/servers/databases/auditingSettings@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_sqldb_slipwell
  name: 'Default'
  properties: {
    retentionDays: 0
    isAzureMonitorTargetEnabled: false
    state: 'Disabled'
    storageAccountSubscriptionId: '00000000-0000-0000-0000-000000000000'
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource Microsoft_Sql_servers_databases_backupLongTermRetentionPolicies_servers_sql_slipwell_team2_name_sqldb_slipwell_default 'Microsoft.Sql/servers/databases/backupLongTermRetentionPolicies@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_sqldb_slipwell
  name: 'default'
  properties: {
    timeBasedImmutability: 'Disabled'
    weeklyRetention: 'PT0S'
    monthlyRetention: 'PT0S'
    yearlyRetention: 'PT0S'
    weekOfYear: 0
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource Microsoft_Sql_servers_databases_backupShortTermRetentionPolicies_servers_sql_slipwell_team2_name_sqldb_slipwell_default 'Microsoft.Sql/servers/databases/backupShortTermRetentionPolicies@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_sqldb_slipwell
  name: 'default'
  properties: {
    retentionDays: 7
    diffBackupIntervalInHours: 24
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource Microsoft_Sql_servers_databases_extendedAuditingSettings_servers_sql_slipwell_team2_name_sqldb_slipwell_Default 'Microsoft.Sql/servers/databases/extendedAuditingSettings@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_sqldb_slipwell
  name: 'Default'
  properties: {
    retentionDays: 0
    isAzureMonitorTargetEnabled: false
    state: 'Disabled'
    storageAccountSubscriptionId: '00000000-0000-0000-0000-000000000000'
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource Microsoft_Sql_servers_databases_geoBackupPolicies_servers_sql_slipwell_team2_name_sqldb_slipwell_Default 'Microsoft.Sql/servers/databases/geoBackupPolicies@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_sqldb_slipwell
  name: 'Default'
  properties: {
    state: 'Disabled'
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource servers_sql_slipwell_team2_name_sqldb_slipwell_Current 'Microsoft.Sql/servers/databases/ledgerDigestUploads@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_sqldb_slipwell
  name: 'Current'
  properties: {}
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource Microsoft_Sql_servers_databases_securityAlertPolicies_servers_sql_slipwell_team2_name_sqldb_slipwell_Default 'Microsoft.Sql/servers/databases/securityAlertPolicies@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_sqldb_slipwell
  name: 'Default'
  properties: {
    state: 'Disabled'
    disabledAlerts: [
      ''
    ]
    emailAddresses: [
      ''
    ]
    emailAccountAdmins: false
    retentionDays: 0
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource Microsoft_Sql_servers_databases_transparentDataEncryption_servers_sql_slipwell_team2_name_sqldb_slipwell_Current 'Microsoft.Sql/servers/databases/transparentDataEncryption@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_sqldb_slipwell
  name: 'Current'
  properties: {
    state: 'Enabled'
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource Microsoft_Sql_servers_databases_vulnerabilityAssessments_servers_sql_slipwell_team2_name_sqldb_slipwell_Default 'Microsoft.Sql/servers/databases/vulnerabilityAssessments@2025-02-01-preview' = {
  parent: servers_sql_slipwell_team2_name_sqldb_slipwell
  name: 'Default'
  properties: {
    recurringScans: {
      isEnabled: false
      emailSubscriptionAdmins: true
    }
  }
  dependsOn: [
    servers_sql_slipwell_team2_name_resource
  ]
}

resource storageAccounts_slipwellreportstorage_name_default_app_package_slipwell_report_function_cdfc6cb 'Microsoft.Storage/storageAccounts/blobServices/containers@2026-04-01' = {
  parent: storageAccounts_slipwellreportstorage_name_default
  name: 'app-package-slipwell-report-function-cdfc6cb'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [
    storageAccounts_slipwellreportstorage_name_resource
  ]
}

resource storageAccounts_slipwellreportstorage_name_default_azure_webjobs_hosts 'Microsoft.Storage/storageAccounts/blobServices/containers@2026-04-01' = {
  parent: storageAccounts_slipwellreportstorage_name_default
  name: 'azure-webjobs-hosts'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [
    storageAccounts_slipwellreportstorage_name_resource
  ]
}

resource storageAccounts_slipwellreportstorage_name_default_azure_webjobs_secrets 'Microsoft.Storage/storageAccounts/blobServices/containers@2026-04-01' = {
  parent: storageAccounts_slipwellreportstorage_name_default
  name: 'azure-webjobs-secrets'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [
    storageAccounts_slipwellreportstorage_name_resource
  ]
}

resource storageAccounts_slipwellreportstorage_name_default_slipwell_reports 'Microsoft.Storage/storageAccounts/blobServices/containers@2026-04-01' = {
  parent: storageAccounts_slipwellreportstorage_name_default
  name: 'slipwell-reports'
  properties: {
    immutableStorageWithVersioning: {
      enabled: false
    }
    defaultEncryptionScope: '$account-encryption-key'
    denyEncryptionScopeOverride: false
    publicAccess: 'None'
  }
  dependsOn: [
    storageAccounts_slipwellreportstorage_name_resource
  ]
}

resource sites_slipwell_report_function_name_resource 'Microsoft.Web/sites@2024-11-01' = {
  name: sites_slipwell_report_function_name
  location: 'Korea Central'
  tags: {
    'hidden-link: /app-insights-resource-id': '/subscriptions/27db5ec6-d206-4028-b5e1-6004dca5eeef/resourceGroups/dt4_project2_team2/providers/microsoft.insights/components/slipwell-report-function'
  }
  kind: 'functionapp,linux'
  properties: {
    enabled: true
    hostNameSslStates: [
      {
        name: '${sites_slipwell_report_function_name}-bpfcdzfjfwa9cgap.koreacentral-01.azurewebsites.net'
        sslState: 'Disabled'
        hostType: 'Standard'
      }
      {
        name: '${sites_slipwell_report_function_name}-bpfcdzfjfwa9cgap.scm.koreacentral-01.azurewebsites.net'
        sslState: 'Disabled'
        hostType: 'Repository'
      }
    ]
    serverFarmId: serverfarms_ASP_dt4project2team2_a399_name_resource.id
    reserved: true
    isXenon: false
    hyperV: false
    dnsConfiguration: {}
    outboundVnetRouting: {
      allTraffic: false
      applicationTraffic: false
      contentShareTraffic: false
      imagePullTraffic: false
      backupRestoreTraffic: false
    }
    siteConfig: {
      numberOfWorkers: 1
      acrUseManagedIdentityCreds: false
      alwaysOn: false
      http20Enabled: false
      functionAppScaleLimit: 100
      minimumElasticInstanceCount: 0
    }
    functionAppConfig: {
      deployment: {
        storage: {
          type: 'blobContainer'
          value: 'https://${storageAccounts_slipwellreportstorage_name}.blob.core.windows.net/app-package-${sites_slipwell_report_function_name}-cdfc6cb'
          authentication: {
            type: 'StorageAccountConnectionString'
            storageAccountConnectionStringName: 'DEPLOYMENT_STORAGE_CONNECTION_STRING'
          }
        }
      }
      runtime: {
        name: 'python'
        version: '3.11'
      }
      scaleAndConcurrency: {
        maximumInstanceCount: 100
        instanceMemoryMB: 2048
      }
    }
    scmSiteAlsoStopped: false
    clientAffinityEnabled: false
    clientAffinityProxyEnabled: false
    clientCertEnabled: false
    clientCertMode: 'Required'
    hostNamesDisabled: false
    ipMode: 'IPv4'
    customDomainVerificationId: '520102906446FA8AD73B8CFA97C3FF8F5911B86B3D031F586F4B1F9C7A1868D5'
    containerSize: 1536
    dailyMemoryTimeQuota: 0
    httpsOnly: true
    endToEndEncryptionEnabled: false
    redundancyMode: 'None'
    publicNetworkAccess: 'Enabled'
    storageAccountRequired: false
    keyVaultReferenceIdentity: 'SystemAssigned'
    autoGeneratedDomainNameLabelScope: 'TenantReuse'
  }
  dependsOn: [
    storageAccounts_slipwellreportstorage_name_resource
  ]
}

resource networkInterfaces_simulator_machine826_z1_name_resource 'Microsoft.Network/networkInterfaces@2025-05-01' = {
  name: networkInterfaces_simulator_machine826_z1_name
  location: 'koreacentral'
  kind: 'Regular'
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig1'
        id: '${networkInterfaces_simulator_machine826_z1_name_resource.id}/ipConfigurations/ipconfig1'
        properties: {
          privateIPAddress: '10.2.0.4'
          privateIPAllocationMethod: 'Dynamic'
          publicIPAddress: {
            id: publicIPAddresses_simulator_machine_ip_name_resource.id
            properties: {
              deleteOption: 'Delete'
            }
          }
          subnet: {
            id: virtualNetworks_simulator_machine_vnet_name_default.id
          }
          primary: true
          privateIPAddressVersion: 'IPv4'
        }
      }
    ]
    dnsSettings: {
      dnsServers: []
    }
    enableAcceleratedNetworking: true
    enableIPForwarding: false
    disableTcpStateTracking: false
    networkSecurityGroup: {
      id: networkSecurityGroups_simulator_machine_nsg_name_resource.id
    }
    nicType: 'Standard'
    auxiliaryMode: 'None'
    auxiliarySku: 'None'
  }
}
