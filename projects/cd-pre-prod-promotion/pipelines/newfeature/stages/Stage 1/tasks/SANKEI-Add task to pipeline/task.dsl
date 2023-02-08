import java.io.File


task 'SANKEI-Add task to pipeline', {
  description = ''
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/newfeature/stages/Stage 1/tasks/SANKEI-Add task to pipeline.cmd").text,
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  resourceName = ''
  skippable = '0'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
