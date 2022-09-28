
environment 'env1', {
  environmentEnabled = '1'
  reservationRequired = '0'

  environmentTier 'Tier 1', {
    resourceName = [
      'gateway-external-agent',
    ]
  }

  utilityResource 'Utility Resource 1', {
    resourceName = 'gateway-external-agent'
  }
}
