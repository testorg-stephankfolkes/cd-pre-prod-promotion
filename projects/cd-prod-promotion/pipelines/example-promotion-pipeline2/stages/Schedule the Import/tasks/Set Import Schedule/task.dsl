import java.io.File


task 'Set Import Schedule', {
  description = ''
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/example-promotion-pipeline2/stages/Schedule the Import/tasks/Set Import Schedule.groovy").text,
    'shellToUse': 'ec-groovy',
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
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
