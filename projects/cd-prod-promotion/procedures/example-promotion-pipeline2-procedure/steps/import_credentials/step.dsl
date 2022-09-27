import java.io.File


step 'import_credentials', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/example-promotion-pipeline2-procedure/steps/import_credentials.groovy").text
  condition = ''
  errorHandling = 'abortJob'
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
