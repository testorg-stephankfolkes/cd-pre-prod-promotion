
environment 'env', {
  reservationRequired = '0'
  rollingDeployEnabled = '0'
  rollingDeployType = 'phase'

  environmentTier 'Tier 1', {
    resourcePoolName = [
      'autotests_DEV_cd-pre-prod-promotion',
    ]
  }

  tag 'PROD'

  utilityResource 'Utility Resource 1', {
    resourceName = 'new-agent'
  }
}
