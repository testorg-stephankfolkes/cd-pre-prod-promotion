
trigger 'test_trigger', {
  description = ''
  accessTokenPublicId = 'ptofflfyng7pk0pdp8onxv5pzdburz'
  actualParameter = [
    'ec_stagesToRun': '["Stage 1"]',
  ]
  enabled = '1'
  insertRollingDeployManualStep = '0'
  pluginKey = 'EC-Github'
  pluginParameter = [
    'commitStatusEvent': 'false',
    'includeBranches': 'main',
    'includeCommitStatuses': 'success',
    'includePrActions': 'closed_merged',
    'prEvent': 'false',
    'pushEvent': 'true',
    'repositories': 'test',
  ]
  projectName = 'cd-pre-prod-promotion'
  quietTimeMinutes = '0'
  releaseName = 'testrel'
  runDuplicates = '0'
  serviceAccountName = 'Trigger-SC'
  triggerType = 'webhook'
  webhookName = 'default'
}
