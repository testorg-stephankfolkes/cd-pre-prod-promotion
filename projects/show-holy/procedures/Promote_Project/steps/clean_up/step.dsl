import java.io.File


step 'clean_up', {
  description = 'Clean up the workspace'
  alwaysRun = '1'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Promote_Project/steps/clean_up.cmd").text
  condition = ''
  errorHandling = 'abortJobNow'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  releaseMode = 'none'
  resourceName = '$[/myJob/AssignedResource]'
  shell = ''
  timeLimit = ''
  timeLimitUnits = 'minutes'
  workingDirectory = ''
  workspaceName = ''
}
