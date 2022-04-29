
task 'task3', {
  description = ''
  actualParameter = [
    'cloneBranch': 'adfa',
    'ec-git_configuration': '/projects/cd-prod-promotion/pluginConfigurations/def_git_config',
    'gitRepoUrl': 'sadf',
    'resource_OR_pool_name': 'gateway-external-agent',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  groupName = 'Group 1'
  insertRollingDeployManualStep = '0'
  projectName = 'cd-pre-prod-promotion'
  resourceName = ''
  skippable = '0'
  subprocedure = 'example-promotion-pipeline2-procedure'
  subproject = 'cd-prod-promotion'
  taskType = 'PROCEDURE'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
