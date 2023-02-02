import java.io.File


task 'new added task2', {
  description = ''
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/1.3.myParentReleasePipeline1/pipelines/myParentPipeline_DEMO/stages/Stage 1/tasks/new added task2.cmd").text,
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
