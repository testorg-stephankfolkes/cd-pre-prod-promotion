import java.io.File


task 'Check Change Record', {
  description = '''We need to check if a change record is supplied, if not we need to have this imported maybe a procedure could be used for this step.
  Once change record is available we need to retrieve details of it'''
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/scheduleImport-postMerge-validatePR/stages/Process Change Record/tasks/Check Change Record.cmd").text,
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
