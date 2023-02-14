import java.io.File


task ' SANKEI-pipeline-1-stage-1-task-1', {
  description = ''
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/SANKEI-Release-1/pipelines/SANKEI-Pipeline-1/stages/SANKEI-pipeline-1-stage-1/tasks/ SANKEI-pipeline-1-stage-1-task-1.cmd").text,
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
