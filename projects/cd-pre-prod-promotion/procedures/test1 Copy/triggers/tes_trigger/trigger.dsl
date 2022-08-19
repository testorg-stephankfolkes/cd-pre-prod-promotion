
trigger 'tes_trigger', {
  description = ''
  accessTokenPublicId = 'rvfd9tnnhb40m76uy6gcr9m3mhxaqu'
  actualParameter = [
    'project': 'test',
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
  procedureName = 'test1 Copy'
  projectName = 'cd-pre-prod-promotion'
  quietTimeMinutes = '0'
  runDuplicates = '0'
  serviceAccountName = 'Trigger-SC'
  triggerType = 'webhook'
  webhookName = 'default'
}
