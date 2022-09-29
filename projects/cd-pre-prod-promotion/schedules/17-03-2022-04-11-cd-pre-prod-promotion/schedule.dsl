
schedule '17-03-2022-04-11-cd-pre-prod-promotion', {
  description = ''
  beginDate = '2022-04-11'
  endDate = '2022-04-12'
  interval = '0'
  intervalUnits = 'seconds'
  misfirePolicy = 'runOnce'
  monthDays = ''
  priority = 'normal'
  procedureName = 'example-promotion-pipeline2-procedure'
  scheduleDisabled = '0'
  startTime = '16:05'
  stopTime = ''
  timeZone = 'GMT'
  weekDays = ''
  actualParameter 'cloneBranch', 'main'
  actualParameter 'ec-git_configuration', '/projects/cd-pre-prod-promotion/pluginConfigurations/def_git_config'
  actualParameter 'gitRepoUrl', 'https://github.com/testorg-stephankfolkes/cd-pre-prod-promotion.git'
  actualParameter 'resource_OR_pool_name', 'new-agent-flow-agents'
  actualParameter 'targetImportProjectName', '/projects/cd-pre-prod-promotion'
}
