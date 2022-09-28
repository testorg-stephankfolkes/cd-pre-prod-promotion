import java.io.File


task 'Get webhook push data', {
  description = 'Parse data from the SCM webhook'
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/example-promotion-pipeline2/stages/Schedule the Import/tasks/Get webhook push data.groovy").text,
    'shellToUse': 'ec-groovy',
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
