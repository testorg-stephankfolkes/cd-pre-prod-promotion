import java.io.File


task 'task', {
  description = ''
  actualParameter = [
    'commandToRun': new File(projectDir, "./releases/releaseTest/pipelines/pipeline_releaseTest/stages/Stage 1/tasks/Group 1/tasks/task.cmd").text,
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
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
