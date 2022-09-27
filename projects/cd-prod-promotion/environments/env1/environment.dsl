
environment 'env1', {
  environmentEnabled = '1'
  projectName = 'cd-prod-promotion'
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
