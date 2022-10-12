
trigger 'asdf', {
  description = ''
  actualParameter = [
    'ec_stagesToRun': '["Stage 1"]',
  ]
  enabled = '1'
  insertRollingDeployManualStep = '0'
  pluginKey = 'EC-Git'
  pluginParameter = [
    'branch': 'main',
    'config': '/projects/cd-pre-prod-promotion/pluginConfigurations/def_git_config',
    'forEachTag': 'false',
    'monitor': 'tags',
    'repoUrl': 'sadf',
  ]
  quietTimeMinutes = '0'
  runDuplicates = '1'
  triggerType = 'polling'
}
