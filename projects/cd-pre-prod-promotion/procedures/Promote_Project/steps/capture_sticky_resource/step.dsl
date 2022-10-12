import java.io.File


step 'capture_sticky_resource', {
  description = 'Capture the resource used for this procedure so subsequent steps may also use the same resource. Required for resource pools.'
  alwaysRun = '1'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Promote_Project/steps/capture_sticky_resource.cmd").text
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
