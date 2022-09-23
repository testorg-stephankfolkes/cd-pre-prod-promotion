import java.io.File


step 'Set tag for job run', {
  description = 'Setting a tag for the procedure run. The tag is set to the Git repository name.'
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/example-promotion-pipeline2-procedure/steps/Set tag for job run.groovy").text
  condition = ''
  errorHandling = 'abortProcedure'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  projectName = 'cd-prod-promotion'
  releaseMode = 'none'
  resourceName = '$[resource_OR_pool_name]'
  shell = 'ec-groovy'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  workingDirectory = ''
  workspaceName = ''
}
