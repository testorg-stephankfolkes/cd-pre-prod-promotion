
schedule '20-10-2022-03-27-trigger', {
  description = ''
  beginDate = '2022-03-27'
  endDate = '2022-03-28'
  environmentProjectName = 'cd-pre-prod-promotion'
  misfirePolicy = 'runOnce'
  priority = 'normal'
  procedureName = 'example-promotion-pipeline2-procedure'
  scheduleDisabled = '0'
  startTime = '20:10'
  timeZone = 'Etc/UTC'
  actualParameter 'cloneBranch', 'main'
  actualParameter 'ec-git_configuration', '/projects/cd-pre-prod-promotion/pluginConfigurations/def_git_config'
  actualParameter 'gitRepoUrl', 'https://github.com/testorg-stephankfolkes/trigger.git'
  actualParameter 'resource_OR_pool_name', 'new-agent-flow-agents'
  actualParameter 'targetImportProjectName', '/projects/trigger'
}
