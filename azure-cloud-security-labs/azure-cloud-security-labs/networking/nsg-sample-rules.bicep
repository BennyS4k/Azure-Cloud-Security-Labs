resource nsg "Microsoft.Network/networkSecurityGroups@2021-02-01" = {
  name: "myNSG"
  location: resourceGroup().location
  properties: {
    securityRules: [
      {
        name: "DenyAllInbound"
        properties: {
          priority: 4096
          direction: "Inbound"
          access: "Deny"
          protocol: "*"
          sourcePortRange: "*"
          destinationPortRange: "*"
          sourceAddressPrefix: "*"
          destinationAddressPrefix: "*"
        }
      }
    ]
  }
}