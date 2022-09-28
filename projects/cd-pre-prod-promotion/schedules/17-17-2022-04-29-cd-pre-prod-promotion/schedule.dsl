
schedule '17-17-2022-04-29-cd-pre-prod-promotion', {
  description = ''
  beginDate = '2022-04-29'
  endDate = '2022-04-30'
  environmentProjectName = 'cd-prod-promotion'
  misfirePolicy = 'runOnce'
  priority = 'normal'
  procedureName = 'example-promotion-pipeline2-procedure'
  scheduleDisabled = '0'
  startTime = '17:17'
  timeZone = 'Europe/London'
  actualParameter 'cloneBranch', 'main'
  actualParameter 'ec-git_configuration', '/projects/cd-prod-promotion/pluginConfigurations/def_git_config'
  actualParameter 'gitRepoUrl', 'https://github.com/testorg-stephankfolkes/cd-pre-prod-promotion.git'
  actualParameter 'resource_OR_pool_name', 'new-agent-flow-agents'
  actualParameter 'targetImportProjectName', '/projects/cd-pre-prod-promotion'
}
