
environment 'env', {
  description = ''
  environmentEnabled = '1'
  reservationRequired = '0'
  rollingDeployEnabled = '0'
  rollingDeployType = 'phase'

  environmentTier 'Tier 1', {
    description = ''
    resourceName = [
      'k8s-agent-flow-agent-0',
    ]
  }

  tag 'PROD', {
    description = ''
  }

  utilityResource 'Utility Resource 1', {
    description = ''
  }
}
