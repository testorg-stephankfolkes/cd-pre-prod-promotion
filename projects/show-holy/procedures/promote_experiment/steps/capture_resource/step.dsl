import java.io.File


step 'capture_resource', {
  description = 'capture the resource used for this procedure so subsequent steps may also use the same resource.'
  alwaysRun = '1'
  broadcast = '0'
  command = new File(projectDir, "./procedures/promote_experiment/steps/capture_resource.cmd").text
  condition = ''
  errorHandling = 'abortJobNow'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  releaseMode = 'none'
  resourceName = ''
  shell = ''
  timeLimit = ''
  timeLimitUnits = 'minutes'
  workingDirectory = ''
  workspaceName = ''
}
