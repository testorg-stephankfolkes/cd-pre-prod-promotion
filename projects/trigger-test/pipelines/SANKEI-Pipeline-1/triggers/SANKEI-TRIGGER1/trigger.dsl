
trigger 'SANKEI-TRIGGER1', {
  actualParameter = [
    'ec_stagesToRun': '["SANKEI-pipeline-1-stage-1","SANKEI-pipeline-1-stage-2"]',
  ]
  pluginKey = 'EC-Github'
  pluginParameter = [
    'commitStatusEvent': 'true',
    'excludeBranches': '',
    'includeBranches': 'branch-10',
    'includeCommitStatuses': 'success',
    'includePrActions': 'closed_merged',
    'prEvent': 'false',
    'pushEvent': 'false',
    'repositories': 'testorg-stephankfolkes/trigger-test',
  ]
  quietTimeMinutes = '0'
  runDuplicates = '0'
  serviceAccountName = 'SANKEI-ServiceAccount-1'
  triggerType = 'webhook'
  webhookName = 'default'
}
