import java.io.File


task 'Git Clone the PR Branch', {
  description = ''
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/scheduleImport-postMerge-validatePR/stages/Process Pull Request/tasks/Git Clone the PR Branch.cmd").text,
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'cd-prod-promotion'
  skippable = '0'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
