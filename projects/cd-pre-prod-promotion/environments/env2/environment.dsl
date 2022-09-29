
environment 'env2', {
  environmentEnabled = '1'
  reservationRequired = '0'

  environmentTier 'Tier 1', {

    reservation 'tryer', {
      beginDate = '2022-09-29T10:00'
      blackout = '1'
      endDate = '2022-09-29T11:00'
      environmentName = 'env2'
      environmentTierName = 'Tier 1'
      overlap = '0'
      recurrence = '0'
      timeZone = 'Europe/London'
    }
    resourcePoolName = [
      'autotests_EXT1',
    ]
  }

  utilityResource 'Utility Resource 1', {
    resourceName = 'autotests_DEV'
  }
}
