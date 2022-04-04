
environment 'env', {
  description = ''
  environmentEnabled = '1'
  projectName = 'cd-pre-prod-promotion'
  reservationRequired = '0'

  environmentTier 'Tier 1', {
    resourceName = [
      'k8s-agent-flow-agent-0',
    ]
  }
}
