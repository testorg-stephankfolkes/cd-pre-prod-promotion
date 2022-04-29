
environment 'env', {
  description = ''
  environmentEnabled = '1'
  projectName = 'cd-pre-prod-promotion'
  reservationRequired = '0'
  rollingDeployEnabled = '0'
  rollingDeployType = 'phase'

  environmentTier 'Tier 1', {
    description = ''
    resourceName = [
      'k8s-agent-flow-agent-0',
    ]
  }

  utilityResource 'Utility Resource 1', {
    description = ''
  }
}
