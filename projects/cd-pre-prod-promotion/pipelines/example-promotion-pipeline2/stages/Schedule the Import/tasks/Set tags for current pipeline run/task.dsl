import java.io.File


task 'Set tags for current pipeline run', {
  description = 'Setting a tag for the pipeline run. The tag is set to the Git repository name.'
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/example-promotion-pipeline2/stages/Schedule the Import/tasks/Set tags for current pipeline run.groovy").text,
    'shellToUse': 'ec-groovy',
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  skippable = '0'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
