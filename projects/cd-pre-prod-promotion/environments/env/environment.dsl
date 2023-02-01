
environment 'env', {
  description = ''
  environmentEnabled = '1'
  reservationRequired = '0'
  rollingDeployEnabled = '0'
  rollingDeployType = 'phase'

  environmentTier 'Tier 1', {
    description = ''
    resourcePoolName = [
      'autotests_DEV_cd-pre-prod-promotion',
    ]
  }

  tag 'PROD', {
    description = ''
  }

  utilityResource 'Utility Resource 1', {
    description = ''
    resourceName = 'new-agent'
  }
}
