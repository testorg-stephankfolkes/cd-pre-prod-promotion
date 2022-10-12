import java.io.File


task 're', {
  description = '123 desc'
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/testpipeline/stages/Stage 1/tasks/re.cmd").text,
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  resourceName = 'autotests_DEV'
  skippable = '0'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
