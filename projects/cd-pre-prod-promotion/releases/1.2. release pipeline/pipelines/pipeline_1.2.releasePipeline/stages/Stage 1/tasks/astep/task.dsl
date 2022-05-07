import java.io.File


task 'astep', {
  description = ''
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/1.2. release pipeline/pipelines/pipeline_1.2.releasePipeline/stages/Stage 1/tasks/astep.cmd").text,
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'cd-pre-prod-promotion'
  resourceName = ''
  skippable = '0'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
