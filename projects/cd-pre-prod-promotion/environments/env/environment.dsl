
environment 'env', {
  reservationRequired = '0'
  rollingDeployEnabled = '0'
  rollingDeployType = 'phase'

  environmentTier 'Tier 1', {
    resourcePoolName = [
      'autotests_DEV',
    ]
  }

  tag 'PROD'

  utilityResource 'Utility Resource 1'
}
