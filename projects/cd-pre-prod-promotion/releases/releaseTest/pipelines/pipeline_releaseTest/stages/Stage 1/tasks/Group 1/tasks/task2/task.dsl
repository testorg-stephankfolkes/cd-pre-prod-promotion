
task 'task2', {
  description = ''
  actualParameter = [
    'cred': '/projects/cd-pre-prod-promotion/credentials/github_org_token',
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
  subprocedure = 'test1 Copy'
  subproject = 'cd-pre-prod-promotion'
  taskType = 'PROCEDURE'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
