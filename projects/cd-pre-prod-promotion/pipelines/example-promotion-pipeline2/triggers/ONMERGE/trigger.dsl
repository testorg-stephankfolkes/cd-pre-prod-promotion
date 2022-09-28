
trigger 'ONMERGE', {
  accessTokenPublicId = 'iqvrpfvmxsstntcmwtyy8tq6er5d6m'
  actualParameter = [
    'ec_stagesToRun': '["Schedule the Import"]',
  ]
  enabled = '0'
  insertRollingDeployManualStep = '0'
  pluginKey = 'EC-Github'
  pluginParameter = [
    'commitStatusEvent': 'false',
    'includeBranches': 'main',
    'includeCommitStatuses': 'success',
    'includePrActions': 'closed_merged',
    'prEvent': 'false',
    'pushEvent': 'true',
    'repositories': '''testorg-stephankfolkes/trigger
testorg-stephankfolkes/cd-pre-prod-promotion''',
  ]
  quietTimeMinutes = '0'
  runDuplicates = '0'
  serviceAccountName = 'Trigger-SC'
  triggerType = 'webhook'
  webhookName = 'default'
}
