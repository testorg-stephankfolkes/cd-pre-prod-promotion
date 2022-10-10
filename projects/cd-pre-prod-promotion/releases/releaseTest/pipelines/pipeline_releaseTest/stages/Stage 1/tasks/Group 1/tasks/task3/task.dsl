
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
  insertRollingDeployManualStep = '0'
  resourceName = ''
  skippable = '0'
  subprocedure = 'example-promotion-pipeline2-procedure'
  subproject = 'cd-pre-prod-promotion'
  taskType = 'PROCEDURE'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
