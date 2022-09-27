
task 'rollback', {
  actualParameter = [
    'ec_enforceDependencies': '1',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'cd-prod-promotion'
  resourceName = ''
  skippable = '0'
  subproject = 'cd-prod-promotion'
  taskProcessType = 'APPLICATION'
  taskType = 'PROCESS'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
