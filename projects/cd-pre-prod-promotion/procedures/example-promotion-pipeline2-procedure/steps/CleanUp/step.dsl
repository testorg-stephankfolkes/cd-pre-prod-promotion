import java.io.File


step 'CleanUp', {
  description = ''
  alwaysRun = '1'
  broadcast = '0'
  command = new File(projectDir, "./procedures/example-promotion-pipeline2-procedure/steps/CleanUp.cmd").text
  condition = ''
  errorHandling = 'abortProcedureNow'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  releaseMode = 'none'
  resourceName = '$[resource_OR_pool_name]'
  shell = ''
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  workingDirectory = ''
  workspaceName = ''
}
